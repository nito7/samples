#!/usr/bin/env ruby
# coding: utf-8

class Tree

  class Node
    def initialize(key, data)
      @key   = key
      @data  = data
      @left  = nil
      @right = nil
    end
    attr_accessor :key, :data, :left, :right
  end

  def initialize
    @root  = nil
  end

  private

  ##=============================================
  ## keyに一致するnodeを探す
  ##=============================================
  def search(node, key)
    while node
      if key == node.key
        return node
      elsif key < node.key
        node = node.left
      else
        node = node.right
      end
    end
  end

  ##=============================================
  ## nodeを挿入する
  ##=============================================
  def insert!(node, key, data)
    if node == nil
      return Node.new(key, data)
    elsif key == node.key
      node.data = data
    elsif key < node.key
      node.left = insert!(node.left, key, data)
    else
      node.right = insert!(node.right, key, data)
    end
    node
  end

  ##=============================================
  ## 最小のkeyを持つnodeを探す
  ##=============================================
  def search_min(node)
    while node.left
      node = node.left 
    end
    node
  end

  ##=============================================
  ## 最大のkeyを持つnodeを探す
  ##=============================================
  def search_max(node)
    while node.right
      node = node.right
    end
    node
  end

  ##=============================================
  ## 最小のkeyを持つnodeを削除する
  ##=============================================
  def delete_min!(node)
    unless node.left
      return node.right
    end
    node.left = delete_min!(node.left)
    node
  end

  ##=============================================
  ## keyに一致するnodeを削除する
  ##=============================================
  def delete!(node, key)
    data = nil
    if node
      if key == node.key
        data = node.data # 削除したnodeの値を返却
        if node.left == nil
          return node.right, data
        elsif node.right == nil
          return node.left, data
        else
          min_node   = search_min(node.right)
          node.key   = min_node.key
          node.data  = min_node.data
          node.right = delete_min!(node.right)
        end
      elsif key < node.key
        node.left, data = delete!(node.left, key)
      else
        node.right, data = delete!(node.right, key)
      end 
    end
    return node, data
  end

  ##=============================================
  ## 木を巡回する 
  ##=============================================
  def traverse(node, &func)
    if node
      traverse(node.left, &func)
      func.call(node.key, node.data)
      traverse(node.right, &func)
    end
  end

  public

  ##=============================================
  ## 探索する
  ##=============================================
  def [](key)
    node = search(@root, key)
    if node
      node.data
    end
  end
  
  ##=============================================
  ## 挿入する
  ##=============================================
  def []=(key, value)
    @root = insert!(@root, key, value)
    value
  end
  
  ##=============================================
  ## 削除する
  ##=============================================
  def delete_key!(key)
    @root, value = delete!(@root, key)
    value
  end
  
  ##=============================================
  ## 最小値を求める
  ##=============================================
  def min
    if @root
      node = search_min(@root)
      if node
        [node.key, node.data]
      end
    end
  end
  
  ##=============================================
  ## 最大値を求める
  ##=============================================
  def max
    if @root
      node = search_max(@root)
      if node
        [node.key, node.data]
      end
    end
  end
  
  ##=============================================
  ## 巡回する
  ##=============================================
  def each(&func)
    traverse(@root, &func)
  end

  ##=============================================
  ## 表示する
  ##=============================================
  def inspect
    sprintf("#<Tree:%#x>", self.object_id)
  end
  
end
