

# test TDD

RSpec.describe"Score" do

    it "score of an empty list is zero" do
        #arrange
        empty_list = []
        
        #act
        result = score(empty_list)

        #assert
        expect(result).to eq(0)  
    end

    it "score of a dice list with value 5 is 50" do
        #arrange
        dice_list = [5]
        
        #act
        result = score(dice_list)
        
        #assert
        expect(result).to eq(50)
    end

    it "score of a dice list with value 1 is 100" do
        #arrange
        dice_list = [1]
        
        #act
        result = score(dice_list)
      
        #assert
        expect(result).to eq(100)
    end

    it "score of a multiple 1s and 5s is the sum of individual scores" do
        #arrange
        dice_list = [1, 5, 5, 1]

        #act
        result = score(dice_list)
      
        #assert
        expect(result).to eq(300)
    end

    it "score of single 2s 3s 4s and 6s are zero" do
        #arrange
        dice_list = [2, 3, 4, 6]

        #act
        result = score(dice_list)

        #assert
        expect(result).to eq(0)
    end 

    it "score of a triple 1 is 1000" do
        #arrange
        dice_list = [1, 1, 1]

        #act
        result = score(dice_list)

        #assert
        expect(result).to eq(1000)
    end 

    it "score of other triples is the number x100" do
        #arrange
        triple_list = [2, 2, 2]
        triple_list = [3, 3, 3]
        triple_list = [4, 4, 4]
        triple_list = [5, 5, 5]
        triple_list = [6, 6, 6]

        #act
        result = score(triple_list)

        #assert
        expect(result).to eq(score(triple_list))
    end 

   it "score of mixed numbers is sum of them" do
        #arrange
        mixed_number_list = [2, 5, 2, 2, 3]
        mixed_number_list = [5, 5, 5, 5]
        mixed_number_list = [1, 1, 1, 1]
        mixed_number_list = [1, 1, 1, 1, 1]
        mixed_number_list = [1, 1, 1, 5, 1]

        #act
        result = score(mixed_number_list)

        #assert
        expect(result).to eq(score(mixed_number_list))
    end

end

  
end
