%{
  configs: [
    %{
      name: "default",
      files: %{
        included: ["lib/"],
        excluded: [
          "lib/mix/tasks",
          "lib/bson/binary_utils.ex", # TODO: https://github.com/rrrene/credo/issues/144
          "lib/bson/utils.ex" # TODO: https://github.com/rrrene/credo/issues/145
        ]
      },
      checks: [
        {Credo.Check.Design.TagTODO, exit_status: 0}
      ]
    }
  ]
}
