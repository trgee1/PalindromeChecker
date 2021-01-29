import processing.core.PApplet;

public class Sketch extends PApplet{
    public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String backwards = 
  reverse(justChar(word)).toLowerCase();
  if(backwards.equals(justChar(word).toLowerCase()))
    return true;
    else
  return false;
}
public String reverse(String sWord){
  String s2Word = new String();
  for(int i = sWord.length(); i > 0; i--){
  s2Word = s2Word + sWord.substring(i-1, i);
  }
  return s2Word;
}
public String justChar(String noSymbol){
  String lettersOnly = new String();
  for(int i = 0; i < noSymbol.length(); i++){
  if(Character.isLetter(noSymbol.charAt(i)) == true){
    lettersOnly = lettersOnly + noSymbol.charAt(i);
  }
  }
  return lettersOnly;
}
}
