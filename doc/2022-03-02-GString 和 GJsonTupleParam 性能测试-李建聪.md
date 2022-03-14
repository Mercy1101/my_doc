# GString 和 GJsonTupleParam 性能测试

## 测试结果

| 内容                              | 总耗时 |
| :-------------------------------- | -----: |
| GString: 10, Append(1024): 100    |  46 us |
| GString: 10, Append(1024): 1000   | 336 us |
| GString: 10, Append(1024): 10000  |   3 ms |
| GString: 10, Append(1024): 100000 |  33 ms |
| GJsonTupleParam.Add 100次         |  15 ms |
| GJsonTupleParam.Add 1000次        |   16 s |
| GJsonTupleParam.Add 10000次       |  159 s |

## 详细代码

### GString 测试代码

```c++
TEST_CASE("GString类 性能测试 ", "[gos][GString]")
{
    char ac[1024] = {0};
    gos::iota(ac, ac + sizeof(ac), 0);

    SECTION("GString: 10, Append(1024): 100")
    {
        PROFILER_INFO("GString类 性能测试 GString: 10, Append(1024): 100");
        for (unsigned x = 0; x < 10; ++x)
        {
            GString str;
            for (unsigned i = 0; i < 100; ++i)
            {
                str.Append(ac);
            }
        }
    }

    SECTION("GString: 10, Append(1024): 1k")
    {
        PROFILER_INFO("GString类 性能测试 GString: 10, Append(1024): 1k");
        for (unsigned x = 0; x < 10; ++x)
        {
            GString str;
            for (unsigned i = 0; i < 1000; ++i)
            {
                str.Append(ac);
            }
        }
    }

    SECTION("GString: 10, Append(1024): 10k")
    {
        PROFILER_INFO("GString类 性能测试 GString: 10, Append(1024): 10k");
        for (unsigned x = 0; x < 10; ++x)
        {
            GString str;
            for (unsigned i = 0; i < 10000; ++i)
            {
                str.Append(ac);
            }
        }
    }

    SECTION("GString: 10, Append(1024): 100k")
    {
        PROFILER_INFO("GString类 性能测试 GString: 10, Append(1024): 100k");
        for (unsigned x = 0; x < 10; ++x)
        {
            GString str;
            for (unsigned i = 0; i < 100000; ++i)
            {
                str.Append(ac);
            }
        }
    }
}
```
### GJsonTupleParam 测试代码

```c++
TEST_CASE("GJsonTupleParam 性能测试", "[gos][GJsonTupleParam]")
{
    SECTION("GJsonTupleParam: 10, GJsonParam: 100")
    {
        for (unsigned ul = 0; ul < 10; ++ul)
        {
            PROFILER_INFO("GJsonTupleParam 性能测试 GJsonTupleParam: 10, GJsonParam: 100");
            GJsonTupleParam JsonTupleParam;
            GJsonParam JsonParam;
            for (unsigned i = 0; i < 100; ++i)
            {
                JsonParam.Add("ne_id", "jlasdf");
                JsonParam.Add("mac", "lsajfda");
                JsonParam.Add("ip", "jlasfj");
                JsonParam.Add("type", 232);
                JsonParam.Add("name", "alsjf");
                JsonParam.Add("alias", "dlafjk");
                JsonParam.Add("sw_ver", "jlfzsjdf");
                JsonParam.Add("hw_ver", "jflajd");
                JsonParam.Add("model", "jflaj");
                JsonParam.Add("online_sec", 66);
                JsonParam.Add("android_ver", "jladj");
                JsonParam.Add("radio_ver", "aljdfkla");
                JsonTupleParam.Add(JsonParam);
            }
        }
    }

    SECTION("GJsonTupleParam: 10, GJsonParam: 1k")
    {
        for (unsigned ul = 0; ul < 10; ++ul)
        {
            PROFILER_INFO("GJsonTupleParam 性能测试 GJsonTupleParam: 10, GJsonParam: 1k");
            GJsonTupleParam JsonTupleParam;
            GJsonParam JsonParam;
            for (unsigned i = 0; i < 1000; ++i)
            {
                JsonParam.Add("ne_id", "jlasdf");
                JsonParam.Add("mac", "lsajfda");
                JsonParam.Add("ip", "jlasfj");
                JsonParam.Add("type", 232);
                JsonParam.Add("name", "alsjf");
                JsonParam.Add("alias", "dlafjk");
                JsonParam.Add("sw_ver", "jlfzsjdf");
                JsonParam.Add("hw_ver", "jflajd");
                JsonParam.Add("model", "jflaj");
                JsonParam.Add("online_sec", 66);
                JsonParam.Add("android_ver", "jladj");
                JsonParam.Add("radio_ver", "aljdfkla");
                JsonTupleParam.Add(JsonParam);
            }
        }
    }

    SECTION("GJsonTupleParam: 10, GJsonParam: 10k")
    {
        for (unsigned ul = 0; ul < 10; ++ul)
        {
            PROFILER_INFO("GJsonTupleParam 性能测试 GJsonTupleParam: 10, GJsonParam: 10k");
            GJsonTupleParam JsonTupleParam;
            GJsonParam JsonParam;
            for (unsigned i = 0; i < 10000; ++i)
            {
                JsonParam.Add("ne_id", "jlasdf");
                JsonParam.Add("mac", "lsajfda");
                JsonParam.Add("ip", "jlasfj");
                JsonParam.Add("type", 232);
                JsonParam.Add("name", "alsjf");
                JsonParam.Add("alias", "dlafjk");
                JsonParam.Add("sw_ver", "jlfzsjdf");
                JsonParam.Add("hw_ver", "jflajd");
                JsonParam.Add("model", "jflaj");
                JsonParam.Add("online_sec", 66);
                JsonParam.Add("android_ver", "jladj");
                JsonParam.Add("radio_ver", "aljdfkla");
                JsonTupleParam.Add(JsonParam);
            }
        }
    }
}
```