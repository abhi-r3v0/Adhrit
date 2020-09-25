.class synthetic Lcom/freshchat/consumer/sdk/j/r$1;
.super Ljava/lang/Object;


# static fields
.field static final synthetic kw:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;->values()[Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/freshchat/consumer/sdk/j/r$1;->kw:[I

    :try_start_0
    sget-object v1, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;->CURRENT_AVG:Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/freshchat/consumer/sdk/j/r$1;->kw:[I

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;->LAST_WEEK_AVG:Lcom/freshchat/consumer/sdk/beans/ChannelResponseTime$ResponseTimeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
