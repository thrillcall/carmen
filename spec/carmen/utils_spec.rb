require 'spec_helper'

describe 'Utils.merge_arrays_by_keys' do

  it 'merges arrays of hashes using a key' do
    first = [
      { 'code' => 'AA', 'meta' => 'original' },
      { 'code' => 'BB', 'meta' => 'original' }
    ]

    second = [
      { 'code' => 'BB', 'meta' => 'modified' },
      { 'code' => 'CC', 'meta' => 'new' }
    ]

    expected = [
      { 'code' => 'AA', 'meta' => 'original' },
      { 'code' => 'BB', 'meta' => 'modified' },
      { 'code' => 'CC', 'meta' => 'new' }
    ]

    merged = Carmen::Utils.merge_arrays_by_keys([first, second], ['code'])

    merged.must_equal(expected)
  end

end
