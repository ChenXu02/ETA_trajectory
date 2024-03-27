using ArgParse

include("traindata.jl")

args = let s = ArgParseSettings()
    @add_arg_table s begin
        "--inputpath"
            arg_type=String
            default="E:\\SeverCode\\Deepgtt\\harbin\\data\\jupyterDATAprocess\\jldpath"
        "--outputpath"
            arg_type=String
            default="E:\\SeverCode\\Deepgtt\\harbin\\data\\jupyterDATAprocess\\trainpath"
    end
    parse_args(s; as_symbols=true)
end

###########################################################################
savetraindata(args[:outputpath], args[:inputpath])
