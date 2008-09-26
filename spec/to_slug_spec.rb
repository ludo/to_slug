require File.dirname(__FILE__) + '/spec_helper.rb'

describe String, "to_slug" do
  it "should downcase all characters" do
    "FoO".to_slug.should == "foo"
  end
  
  it "should replace spaces with dashes (-)" do
    "this sentence contains spaces".to_slug.should == "this-sentence-contains-spaces"
  end
  
  it "should not contain whitespace before and after" do
    "    trim me    ".to_slug.should == "trim-me"
  end
    
  it "should remove sentence-end characters (i.e. '.', '?', '!')" do
    "Stop!".to_slug.should == "stop"
  end
  
  it "should replace special characters with dashes (-)" do
    "this s***cks! *(&%!!\r\n@^%&^*#...#!!! big time".to_slug.should == "this-s-cks-big-time"
  end
  
  it "should allow underscores (_)" do
    "Please leave my_underscores_intact".to_slug.should == "please-leave-my_underscores_intact"
  end
  
  it "should remove single quotes" do
    "what's happening".to_slug.should == "whats-happening"
  end
  
  it "should accept a string with zero length" do
    "".to_slug.should == ""
  end
  
  it "should generate a correct slug for 'Simple title'" do
    "Simple title".to_slug.should == "simple-title"
  end

  it "should generate a correct slug for 'I'll be watching you!'" do
    "I'll be watching you".to_slug.should == "ill-be-watching-you"
  end

  it "should generate a correct slug for 'é'" do
    "é".to_slug.should == "e"
  end

  it "should generate a correct slug for 'ü'" do
    "ü".to_slug.should == "u"
  end

  it "should generate a correct slug for 'ì'" do
    "ì".to_slug.should == "i"
  end

  it "should generate a correct slug for 'aëòúi'" do
    "aëòúi".to_slug.should == "aeoui"
  end
  
  it "should generate a correct slug for 'Žluťoučký kůň skákal v tůňce na Öresündu'" do
    "Žluťoučký kůň skákal v tůňce na Öresündu".to_slug.should == "zlutoucky-kun-skakal-v-tunce-na-oresundu"
  end
  
  it "should return a plain String instance" do
    "foo".to_slug.should be_kind_of(String)
  end
end