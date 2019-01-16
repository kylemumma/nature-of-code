Neuron neuron;

Button nextButton;

float[][] inputs1 = new float [][] {
    {random(1), random(1), random(1)}
  };
  
float[][] inputs2 = new float [][] {
  {random(1), random(1), random(1)}
};
  
float[][] inputs3 = new float [][] {
  {random(1), random(1), random(1)}
};

void setup() {
  size(800, 800, P2D);
  
  nextButton = new Button(true, color(100), "next",100, 400, 100, 50);
  
  // sample inputs
  float[][] inputs = new float [][] {
    {0.0, 1.0, 0.0},
    {0.5372549, 0.45490196, 0.85490197},
    {0.5764706, 0.67058825, 0.72156864},
    {0.7294118, 0.79607844, 0.54901963},
    {0.20392157, 0.44313726, 0.81960785},
    {0.9372549, 0.53333336, 0.56078434},
    {0.30588236, 0.06666667, 0.38431373},
    {0.7882353, 0.12941177, 0.57254905},
    {0.007843138, 0.2901961, 0.8666667},
    {0.20784314, 0.9843137, 0.5294118},
    {0.5137255, 0.5058824, 0.5764706},
    {0.46666667, 0.12941177, 0.0627451},
    {0.79607844, 0.80784315, 0.3647059},
    {0.8039216, 0.023529412, 0.015686275},
    {0.8745098, 0.72156864, 0.4509804},
    {0.6666667, 0.27450982, 0.5921569},
    {0.80784315, 1.0, 0.41960785},
    {0.6901961, 0.7372549, 0.5882353},
    {0.64705884, 0.8745098, 0.1764706},
    {0.7490196, 0.65882355, 0.6666667},
    {0.5372549, 0.2509804, 0.75686276},
    {0.26666668, 0.6039216, 0.8666667},
    {0.627451, 0.36078432, 0.40784314},
    {0.48235294, 0.5176471, 0.23137255},
    {0.81960785, 0.17254902, 0.2},
    {0.7019608, 0.39215687, 0.08627451},
    {0.84705883, 0.4392157, 0.29803923},
    {0.16470589, 0.39215687, 0.41960785},
    {0.05882353, 0.5568628, 0.21960784},
    {0.24313726, 0.48235294, 0.4392157},
    {0.5058824, 0.35686275, 0.8039216},
    {0.6627451, 0.79607844, 0.0627451},
    {0.007843138, 0.40784314, 0.3019608},
    {0.3254902, 0.38431373, 0.52156866},
    {0.11372549, 0.67058825, 0.36862746},
    {0.79607844, 0.21960784, 0.5686275},
    {0.44313726, 0.11372549, 0.38039216},
    {0.98039216, 0.85490197, 0.5019608},
    {0.6431373, 0.08627451, 0.07450981},
    {0.007843138, 0.8862745, 0.039215688},
    {0.42745098, 0.050980393, 0.08235294},
    {0.20392157, 0.8666667, 0.94509804},
    {0.24313726, 0.24313726, 0.101960786},
    {0.14509805, 0.3529412, 0.7294118},
    {0.8352941, 0.77254903, 0.84705883},
    {0.6313726, 0.7882353, 0.79607844},
    {0.4862745, 1.0, 0.5137255},
    {0.6901961, 0.8117647, 0.48235294},
    {0.06666667, 0.16862746, 0.6117647},
    {0.9098039, 0.0, 0.7294118},
    {0.87058824, 0.9529412, 0.33333334},
    {0.53333336, 0.73333335, 0.7137255},
    {0.1882353, 0.15686275, 0.36078432},
    {0.5686275, 0.70980394, 0.6117647},
    {0.7254902, 0.09803922, 0.54509807},
    {0.03529412, 0.6313726, 0.92156863},
    {0.70980394, 0.2627451, 0.8352941},
    {0.47058824, 0.7411765, 0.89411765},
    {0.21960784, 0.6431373, 0.31764707},
    {0.6901961, 0.30980393, 0.9019608},
    {0.17254902, 0.5137255, 0.19607843},
    {0.17254902, 0.03137255, 0.16078432},
    {0.84313726, 0.50980395, 0.8901961},
    {0.972549, 0.10980392, 0.37254903},
    {0.7647059, 0.9647059, 0.9019608},
    {0.32941177, 0.7058824, 0.101960786},
    {0.26666668, 0.15294118, 0.09411765},
    {0.34509805, 0.11764706, 0.8235294},
    {0.45490196, 0.37254903, 0.07450981},
    {0.85490197, 0.0627451, 0.23137255},
    {0.47843137, 0.2901961, 0.011764706},
    {0.26666668, 0.4627451, 0.9019608},
    {0.8980392, 0.90588236, 0.02745098},
    {0.4862745, 0.46666667, 0.4392157},
    {0.627451, 0.61960787, 0.42352942},
    {0.078431375, 0.58431375, 0.4627451},
    {0.19607843, 0.45490196, 0.5254902},
    {0.7882353, 0.6627451, 0.69411767},
    {0.9490196, 0.5882353, 0.8117647},
    {0.18431373, 0.9764706, 0.6431373},
    {0.87058824, 0.08627451, 0.9372549},
    {0.34117648, 0.77254903, 0.023529412},
    {0.36078432, 0.52156866, 0.8},
    {0.5647059, 0.5882353, 0.03529412},
    {0.49019608, 0.49411765, 0.45882353},
    {0.31764707, 0.16862746, 0.047058824},
    {0.81960785, 0.20784314, 0.98039216},
    {0.28235295, 0.2, 0.18039216},
    {0.43137255, 0.98039216, 0.9882353},
    {0.7372549, 0.61960787, 0.47058824},
    {0.5764706, 0.7490196, 0.70980394},
    {0.827451, 0.5803922, 0.16862746},
    {0.627451, 0.50980395, 0.41960785},
    {0.15294118, 0.40392157, 0.26666668},
    {0.7411765, 0.8509804, 0.7019608},
    {0.45490196, 0.22745098, 0.88235295},
    {0.41568628, 0.5921569, 0.011764706},
    {0.6627451, 0.9764706, 0.17254902},
    {0.6784314, 0.16862746, 0.94509804}
  };
  
  // sample outputs
  float[][] outputs = new float [][] {
    {0},
    {1},
    {0},
    {0},
    {1},
    {0},
    {1},
    {1},
    {1},
    {0},
    {1},
    {1},
    {0},
    {1},
    {0},
    {1},
    {0},
    {0},
    {0},
    {0},
    {1},
    {0},
    {1},
    {1},
    {1},
    {1},
    {1},
    {1},
    {1},
    {1},
    {1},
    {0},
    {1},
    {1},
    {1},
    {1},
    {1},
    {0},
    {1},
    {0},
    {1},
    {0},
    {1},
    {1},
    {0},
    {0},
    {0},
    {0},
    {1},
    {1},
    {0},
    {0},
    {1},
    {0},
    {1},
    {1},
    {1},
    {0},
    {1},
    {1},
    {1},
    {1},
    {0},
    {1},
    {0},
    {0},
    {1},
    {1},
    {1},
    {1},
    {1},
    {1},
    {0},
    {1},
    {0},
    {1},
    {1},
    {0},
    {0},
    {0},
    {1},
    {0},
    {1},
    {1},
    {1},
    {1},
    {1},
    {1},
    {0},
    {0},
    {0},
    {0},
    {1},
    {1},
    {0},
    {1},
    {0},
    {0},
    {1}
  };
  
  
  // set number of intputs
  int numInputs = 3;
  
  // set number of outputs
  int numOutputs = 1;
  
  neuron = new Neuron(numInputs, numOutputs);
  neuron.train(inputs, outputs, 10000);
  
}


void draw() {
  background(0); 
  textSize(64);
  fill(255, 255, 255);
  
  nextButton.show();
  
  fill(inputs1[0][0]*255, inputs1[0][1]*255, inputs1[0][2]*255);
  rect(100, 40, 300, 70);
  float output = neuron.think(inputs1)[0][0];
  if(output > 0.5){
    fill(255);
    text("white", 110, 100);
  } else {
    fill(0);
    text("black", 110, 100);
  }
  
  
  
  fill(inputs2[0][0]*255, inputs2[0][1]*255, inputs2[0][2]*255);
  rect(100, 140, 300, 70);
  output = neuron.think(inputs2)[0][0];
  if(output > 0.5){
    fill(255);
    text("white", 110, 200);
  } else {
    fill(0);
    text("black", 110, 200);
  }
  
  fill(inputs3[0][0]*255, inputs3[0][1]*255, inputs3[0][2]*255);
  rect(100, 240, 300, 70);
  output = neuron.think(inputs3)[0][0];
  if(output > 0.5){
    fill(255);
    text("white", 110, 300);
  } else {
    fill(0);
    text("black", 110, 300);
  }
}

void mouseClicked(){
  if((mouseX > nextButton.position.x && mouseX < nextButton.position.x + nextButton.xwidth) &&
  (mouseY > nextButton.position.y && mouseY < nextButton.position.y + nextButton.yheight)){
    //black button clicked
    inputs1[0] = new float[] {random(1), random(1), random(1)};
  
    inputs2[0] = new float[] {random(1), random(1), random(1)};
  
    inputs3[0] = new float[] {random(1), random(1), random(1)};
  }
}
