#Big O-ctopus and Biggest Fish#

def sluggish_octopus(school)
    top = nil
    school.each do |fish|
        if top == nil || fish.length > top.length
            top = fish
        end
    end
    top
end
school = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
 'fiiiissshhhhhh']
 p sluggish_octopus(array)
=> "fiiiissshhhhhh"

class Array
    def merge_sort(&prc)
        prc ||= Proc.new { |x, y| x <=> y }
          
        return self if count <= 1
          
        midpoint = count / 2
        sorted_left = self.take(midpoint).merge_sort(&prc)
        sorted_right = self.drop(midpoint).merge_sort(&prc)
          
        Array.merge(sorted_left, sorted_right, &prc)
    end
          
    private
    def self.merge(left, right, &prc)
        merged = []
          
        until left.empty? || right.empty?
            case prc.call(left.first, right.first)
            when -1
                merged << left.shift
            when 0
                merged << left.shift
            when 1
                merged << right.shift
            end
        end
          
        merged.concat(left)
        merged.concat(right)
          
        merged
        end
    end
          

def dominant_octopus(school)
    school = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
 'fiiiissshhhhhh']
    prc = Proc.new { |x, y| x.length <=> y.length }
    p fishes.merge_sort(&prc)[-1]
end

