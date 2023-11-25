/*
  Código para testes do motor DC - Semi Dedicados
*/


#define IN1 10
#define IN2 11

#define Encoder_C1 2
#define Encoder_C2 4

#define PulsesPerRev 400

float Kp = 0.2;
float U0 = 0;
float E0 = 0;

int SerialIn=0;
int PWM_Pin = IN1;
int REF = 0;

float RPM = 0.00;
float PulseCount = 0.0;
boolean direction;

float CurrentMillis = 0.0;
float PreviousMillis = 0.0;
long TotalMillis = 0;
float timepassed=0.0;

void setup() {
  Serial.begin(9600);
  Serial.setTimeout(1);

  pinMode(Encoder_C1, INPUT);
  pinMode(Encoder_C2, INPUT);
  attachInterrupt(digitalPinToInterrupt(Encoder_C1),EncoderCount,RISING);

  pinMode(IN1,OUTPUT);
  pinMode(IN2,OUTPUT);

  digitalWrite(IN2,LOW);
  analogWrite(PWM_Pin,255);
}

void loop() {

  PreviousMillis = millis();

  // le entradas Serial
  if (Serial.available()) {
    SerialIn = Serial.parseInt();

    if(SerialIn != 999)
      REF=SerialIn;
    
    if(SerialIn == 999)
      TurnMotor();
  }

  // lei de controle
  E0 = (float)(REF - RPM);
  U0 = U0 + Kp*E0;

  // saturacoes
  if(U0 <=30)
    U0=30;
  if(U0 >=255)
    U0 = 255;
  analogWrite(PWM_Pin,U0);

  // calculo do RPM
  RPM = (float)(PulseCount*600 / PulsesPerRev );
  PulseCount = 0;


  // prints
  Serial.print("REF:"); Serial.print(REF);Serial.print(" Vel_Atual:"); Serial.print(RPM); Serial.print(" PWM:"); Serial.println(map(U0,0,255,0,100));
  
  //garante ciclo de 100ms
  TotalMillis = millis() - PreviousMillis;
  if(TotalMillis < 100)
    delay(100 - TotalMillis);
}

void TurnMotor(){
  if(PWM_Pin == IN1){
    PWM_Pin = IN2;
    digitalWrite(IN1,LOW);
  } else{
    PWM_Pin = IN1;
    digitalWrite(IN2,LOW);
  }
}

void EncoderCount(){
  
  PulseCount++;
  if(digitalRead(Encoder_C2)){
    direction = true;
  }else{
    direction = false;
  }

}
