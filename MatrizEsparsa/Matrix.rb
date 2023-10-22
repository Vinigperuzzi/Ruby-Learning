require_relative 'Element.rb'

class Matrix
    attr_accessor :sizeRows, :sizeCols, :head


    def initialize nRows, nCols
        @sizeRows = nRows
        @sizeCols = nCols
        @head = Element.new -1, -1, 0
        previous = @head

        nRows.times do |i|
            temp = Element.new i, -1, 0
            temp.below = previous.below
            previous.below = temp
            previous = temp
        end

        previous = @head
        nCols.times do |i|
            temp = Element.new -1, i, 0
            temp.right = previous.right
            previous.right = temp
            previous = temp
        end
    end

    def setElement row, col, data

        newElem = Element.new row, col, data
        search = @head.below

        ##Search the position by rows###############
        while search.below != @head && search.row < row
            search = search.below
        end
        rowHead = search
        previous = search
        while search.right != rowHead && search.col < col
             previous = search
             search = search.right
        end
        newElem.right = previous.right
        previous.right = newElem

        ##Link the columns######################
        search = @head.right
        while search.right != @head && search.col < col
            search = search.right
        end
        colHead = search
        previous = search
        while search.below != colHead && search.row < row
            previous = search
            search = search.below
        end
        newElem.below = previous.below
        previous.below = newElem
    end


    def getElement row, col
        search = @head.below
        while search.row < row
            search = search.below
        end
        previous = search
        while search.right != @head && search.col < col
            previous = search
            search = search.right
        end
        if (search.row == row && search.col == col)
            return search
        end
        return nil
    end



    def printMatrix
        colHead = @head.below
        while colHead.below != @head
            search = colHead.right
            while search.right != colHead
                row = search.row
                col = search.col
                print "#{self.getElement(row, col).data} "
                search = search.right
            end
            puts
            colHead = colHead.below
        end
    end

end
