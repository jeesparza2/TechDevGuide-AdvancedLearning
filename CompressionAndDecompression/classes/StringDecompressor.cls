public class StringDecompressor {
    public String decompressString(String compressedInput) {
        String decompressedString = '';
        String charactersToMultiply = '';
        String multiplier = '';
        Boolean isMultiplier = true;
        
        for (Integer iterator=0; iterator < compressedInput.length()-1; iterator++) {
            String compressedInputCharacter = compressedInput.substring(iterator, iterator+1); 
            
            System.debug(LoggingLevel.ERROR, 'Characters on compressedInput: ' + compressedInputCharacter);
            System.debug(LoggingLevel.ERROR, 'multiplier: ' + multiplier);
            System.debug(LoggingLevel.ERROR, 'charactersToMultiply: ' + charactersToMultiply);
            System.debug(LoggingLevel.ERROR, 'decompressedString: ' + decompressedString);
            
            if(compressedInputCharacter.equals('[')) {
            isMultiplier = false;
            } else if(compressedInputCharacter.equals(']')) {
                decompressedString += multiplyCharacters(Integer.valueOf(multiplier.trim()), charactersToMultiply);
                multiplier = '';
                charactersToMultiply = '';
                isMultiplier = true;
            } else if(isMultiplier) {
                multiplier += compressedInputCharacter;
            } else if(!isMultiplier) {
            charactersToMultiply += compressedInputCharacter;
            }
        }
            
        return decompressedString;
    }
    
    private String multiplyCharacters(Integer multiplier, String charactersToMultiply) {
     String fullString = '';
        
        for(Integer iterator=0; iterator<multiplier; iterator++){
         fullString += charactersToMultiply;
        }
        
        return fullString;
    }
}