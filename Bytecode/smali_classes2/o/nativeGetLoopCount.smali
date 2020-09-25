.class final Lo/nativeGetLoopCount;
.super Lo/nativeCreateFromDirectByteBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/nativeCreateFromDirectByteBuffer<",
        "Lo/RealtimeSinceBootClock$extraCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/nativeCreateFromDirectByteBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Ljava/util/Map$Entry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/RealtimeSinceBootClock$extraCallback;

    iget p1, p1, Lo/RealtimeSinceBootClock$extraCallback;->extraCallback:I

    return p1
.end method

.method final ICustomTabsCallback(Ljava/lang/Object;)Lo/nativeGetSizeInBytes;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/nativeGetSizeInBytes<",
            "Lo/RealtimeSinceBootClock$extraCallback;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lo/nativeCreateFromDirectByteBuffer;->onMessageChannelReady(Ljava/lang/Object;)Lo/nativeGetSizeInBytes;

    move-result-object v0

    invoke-virtual {v0}, Lo/nativeGetSizeInBytes;->extraCallback()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lo/nativeGetSizeInBytes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/nativeGetSizeInBytes;

    invoke-virtual {p0, p1, v0}, Lo/nativeCreateFromDirectByteBuffer;->onNavigationEvent(Ljava/lang/Object;Lo/nativeGetSizeInBytes;)V

    :cond_0
    return-object v0
.end method

.method final ICustomTabsCallback(Lo/linkifyWithPattern;Ljava/util/Map$Entry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/linkifyWithPattern;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RealtimeSinceBootClock$extraCallback;

    sget-object v1, Lo/nativeGetFrame;->onPostMessage:[I

    iget-object v2, v0, Lo/RealtimeSinceBootClock$extraCallback;->ICustomTabsCallback:Lo/getSDKVersionCode;

    invoke-virtual {v2}, Lo/getSDKVersionCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget v0, v0, Lo/RealtimeSinceBootClock$extraCallback;->extraCallback:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lo/nativeToCircleFastFilter;->ICustomTabsCallback()Lo/nativeToCircleFastFilter;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v2, p2}, Lo/nativeToCircleFastFilter;->ICustomTabsCallback(Ljava/lang/Class;)Lo/nativeAddRoundedCornersFilter;

    move-result-object p2

    invoke-interface {p1, v0, v1, p2}, Lo/linkifyWithPattern;->onNavigationEvent(ILjava/lang/Object;Lo/nativeAddRoundedCornersFilter;)V

    goto/16 :goto_0

    :pswitch_1
    iget v0, v0, Lo/RealtimeSinceBootClock$extraCallback;->extraCallback:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lo/nativeToCircleFastFilter;->ICustomTabsCallback()Lo/nativeToCircleFastFilter;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v2, p2}, Lo/nativeToCircleFastFilter;->ICustomTabsCallback(Ljava/lang/Class;)Lo/nativeAddRoundedCornersFilter;

    move-result-object p2

    invoke-interface {p1, v0, v1, p2}, Lo/linkifyWithPattern;->onMessageChannelReady(ILjava/lang/Object;Lo/nativeAddRoundedCornersFilter;)V

    return-void

    :pswitch_2
    iget v0, v0, Lo/RealtimeSinceBootClock$extraCallback;->extraCallback:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lo/linkifyWithPattern;->ICustomTabsCallback(ILjava/lang/String;)V

    return-void

    :pswitch_3
    iget v0, v0, Lo/RealtimeSinceBootClock$extraCallback;->extraCallback:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/setTopInset;

    invoke-interface {p1, v0, p2}, Lo/linkifyWithPattern;->onNavigationEvent(ILo/setTopInset;)V

    return-void

    :pswitch_4
    iget v0, v0, Lo/RealtimeSinceBootClock$extraCallback;->extraCallback:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lo/linkifyWithPattern;->onPostMessage(II)V

    return-void

    :pswitch_5
    iget v0, v0, Lo/RealtimeSinceBootClock$extraCallback;->extraCallback:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lo/linkifyWithPattern;->onMessageChannelReady(IJ)V

    return-void

    :pswitch_6
    iget v0, v0, Lo/RealtimeSinceBootClock$extraCallback;->extraCallback:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lo/linkifyWithPattern;->asInterface(II)V

    return-void

    :pswitch_7
    iget v0, v0, Lo/RealtimeSinceBootClock$extraCallback;->extraCallback:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lo/linkifyWithPattern;->onPostMessage(IJ)V

    return-void

    :pswitch_8
    iget v0, v0, Lo/RealtimeSinceBootClock$extraCallback;->extraCallback:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lo/linkifyWithPattern;->ICustomTabsCallback(II)V

    return-void

    :pswitch_9
    iget v0, v0, Lo/RealtimeSinceBootClock$extraCallback;->extraCallback:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lo/linkifyWithPattern;->onMessageChannelReady(II)V

    return-void

    :pswitch_a
    iget v0, v0, Lo/RealtimeSinceBootClock$extraCallback;->extraCallback:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, v0, p2}, Lo/linkifyWithPattern;->onPostMessage(IZ)V

    return-void

    :pswitch_b
    iget v0, v0, Lo/RealtimeSinceBootClock$extraCallback;->extraCallback:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lo/linkifyWithPattern;->extraCallback(II)V

    return-void

    :pswitch_c
    iget v0, v0, Lo/RealtimeSinceBootClock$extraCallback;->extraCallback:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lo/linkifyWithPattern;->extraCallback(IJ)V

    return-void

    :pswitch_d
    iget v0, v0, Lo/RealtimeSinceBootClock$extraCallback;->extraCallback:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lo/linkifyWithPattern;->onPostMessage(II)V

    return-void

    :pswitch_e
    iget v0, v0, Lo/RealtimeSinceBootClock$extraCallback;->extraCallback:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lo/linkifyWithPattern;->onNavigationEvent(IJ)V

    return-void

    :pswitch_f
    iget v0, v0, Lo/RealtimeSinceBootClock$extraCallback;->extraCallback:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lo/linkifyWithPattern;->ICustomTabsCallback(IJ)V

    return-void

    :pswitch_10
    iget v0, v0, Lo/RealtimeSinceBootClock$extraCallback;->extraCallback:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, v0, p2}, Lo/linkifyWithPattern;->onNavigationEvent(IF)V

    return-void

    :pswitch_11
    iget v0, v0, Lo/RealtimeSinceBootClock$extraCallback;->extraCallback:I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lo/linkifyWithPattern;->onNavigationEvent(ID)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final onMessageChannelReady(Ljava/lang/Object;)Lo/nativeGetSizeInBytes;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lo/nativeGetSizeInBytes<",
            "Lo/RealtimeSinceBootClock$extraCallback;",
            ">;"
        }
    .end annotation

    check-cast p1, Lo/RealtimeSinceBootClock$onMessageChannelReady;

    iget-object p1, p1, Lo/RealtimeSinceBootClock$onMessageChannelReady;->zzjv:Lo/nativeGetSizeInBytes;

    return-object p1
.end method

.method final onMessageChannelReady(Lo/NativeBlurFilter;)Z
    .locals 0

    instance-of p1, p1, Lo/RealtimeSinceBootClock$onMessageChannelReady;

    return p1
.end method

.method final onNavigationEvent(Ljava/lang/Object;Lo/nativeGetSizeInBytes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lo/nativeGetSizeInBytes<",
            "Lo/RealtimeSinceBootClock$extraCallback;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Lo/RealtimeSinceBootClock$onMessageChannelReady;

    iput-object p2, p1, Lo/RealtimeSinceBootClock$onMessageChannelReady;->zzjv:Lo/nativeGetSizeInBytes;

    return-void
.end method

.method final onPostMessage(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lo/nativeCreateFromDirectByteBuffer;->onMessageChannelReady(Ljava/lang/Object;)Lo/nativeGetSizeInBytes;

    move-result-object p1

    invoke-virtual {p1}, Lo/nativeGetSizeInBytes;->onNavigationEvent()V

    return-void
.end method
