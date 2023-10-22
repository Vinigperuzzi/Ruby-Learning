require_relative 'Element.rb'

class Matrix
    attr_accessor :sizeRows, :sizeCols, :head


    def initialize nRows, nCols
        @sizeRows = nRows
        @sizeCols = nCols
        @head = Element.new -1, -1, 0
        previous = @head

        nRows.times do |i|
            temp = Element.new i+1, -1, 0
            temp.below = previous.below
            previous.below = temp
            previous = temp
        end

        previous = @head
        nCols.times do |i|
            temp = Element.new -1, i+1, 0
            temp.right = previous.right
            previous.right = temp
            previous = temp
        end
    end

    #############################getter and setter#######################

    def setElement row, col, data
        if checkSize(row, col, true) != true
            return nil
        end

        testElement = self.getElement row, col
        if testElement != nil
            testElement.data = data
            return
        end
        newElem = Element.new row, col, data
        search = @head.below

        ##Search the position by rows###############
        while search != @head && search.row < row
            search = search.below
        end
        rowHead = search
        search = search.right
        previous = rowHead
        while search != rowHead && search.col < col
             previous = search
             search = search.right
        end
        newElem.right = previous.right
        previous.right = newElem

        ##Link the columns######################
        search = @head.right
        while search != @head && search.col < col
            search = search.right
        end
        colHead = search
        previous = search
        while search != colHead && search.row < row
            previous = search
            search = search.below
        end
        newElem.below = previous.below
        previous.below = newElem
    end


    def getElement row, col
        if checkSize(row, col, true) != true
            return nil
        end
        search = @head.below
        while search.row < row
            search = search.below
        end
        rowHead = search
        search = search.right
        while search != rowHead && search.col < col
            search = search.right
        end
        if search.col == col
            return search
        end
        return nil
    end


    #############################prints#######################

    def printMatrix
        (@sizeRows).times do |i|
            (@sizeCols).times do |j|
                temp = self.getElement(i+1, j+1)
                if temp == nil
                    print "00  "
                else
                    print "#{sprintf('%02d', temp.data)}  "
                end
            end
            puts
        end
    end

    def printHeader
        search = @head.right
        print "                        "
        while search != @head do
            print "#{search.data} (#{search.showCoordinates}) "
            search = search.right
        end
        puts
        search = @head.below
        while search != @head do
            puts "#{search.data} (#{search.showCoordinates}) "
            search = search.below
        end
    end

    def printAll
        rowHead = @head.below
        search = rowHead.right
        while rowHead != @head do
            search = rowHead.right
            while search != rowHead do
                print "#{search.data} (#{search.showCoordinates}) "
                search = search.right
            end
            puts
            rowHead = rowHead.below
        end
    end

    #############################operators#######################

    def sum m2
        if @sizeRows != m2.sizeRows || @sizeCols != m2.sizeRows
            puts "The matrix has different sizes, impossible to operate them by sum"
            return nil
        end
        temp = Matrix.new @sizeRows, @sizeCols
        @sizeRows.times do |i|
            @sizeCols.times do |j|
                op1 = self.getElement(i+1, j+1).data
                op2 = m2.getElement(i+1, j+1).data
                temp.setElement(i+1, j+1, op1 + op2)
            end
        end
        return temp
    end

    def transpose
        temp = Matrix.new @sizeCols, @sizeRows
        @sizeRows.times do |i|
            @sizeCols.times do |j|
                temp.setElement(j+1, i+1, self.getElement(i+1, j+1).data)
            end
        end
        return temp
    end

    #############################suport##########################

    def checkSize n1, n2, param = false
        if n1 > @sizeRows || n2 > @sizeCols
            if param == true
                puts "Coordinates given as parameter are bigger than matrix size"
            end
            return false
        end
        return true
    end

end
