.class final Lo/eP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ef;


# instance fields
.field private ICustomTabsCallback:I

.field private extraCallback:I

.field private final onMessageChannelReady:Lo/eL;

.field private onNavigationEvent:I


# direct methods
.method private constructor <init>(Lo/eL;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lo/eP;->ICustomTabsCallback:I

    const-string v0, "input"

    .line 6
    invoke-static {p1, v0}, Lo/fG;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/eL;

    iput-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    .line 7
    iput-object p0, p1, Lo/eL;->extraCallback:Lo/eP;

    return-void
.end method

.method private final ICustomTabsCallback(Lo/fP;Lo/getMaxSize;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/fP<",
            "TT;>;",
            "Lo/getMaxSize;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService()I

    move-result v0

    .line 52
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    iget v1, v1, Lo/eL;->onPostMessage:I

    iget-object v2, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    iget v2, v2, Lo/eL;->onMessageChannelReady:I

    if-ge v1, v2, :cond_0

    .line 55
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1, v0}, Lo/eL;->ICustomTabsCallback(I)I

    move-result v0

    .line 56
    invoke-interface {p1}, Lo/fP;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v1

    .line 57
    iget-object v2, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    iget v3, v2, Lo/eL;->onPostMessage:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lo/eL;->onPostMessage:I

    .line 58
    invoke-interface {p1, v1, p0, p2}, Lo/fP;->extraCallback(Ljava/lang/Object;Lo/ef;Lo/getMaxSize;)V

    .line 59
    invoke-interface {p1, v1}, Lo/fP;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 60
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/eL;->extraCallback(I)V

    .line 61
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    iget p2, p1, Lo/eL;->onPostMessage:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lo/eL;->onPostMessage:I

    .line 62
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1, v0}, Lo/eL;->onNavigationEvent(I)V

    return-object v1

    .line 53
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzig;

    const-string p2, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzig;-><init>(Ljava/lang/String;)V

    .line 54
    throw p1
.end method

.method private final ICustomTabsCallback(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 743
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 744
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onMessageChannelReady()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object p1

    throw p1
.end method

.method private static extraCallback(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    .line 690
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->asBinder()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object p0

    throw p0
.end method

.method private final onMessageChannelReady(Lo/fP;Lo/getMaxSize;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/fP<",
            "TT;>;",
            "Lo/getMaxSize;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget v0, p0, Lo/eP;->extraCallback:I

    .line 65
    iget v1, p0, Lo/eP;->onNavigationEvent:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    .line 68
    iput v1, p0, Lo/eP;->extraCallback:I

    .line 69
    :try_start_0
    invoke-interface {p1}, Lo/fP;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v1

    .line 70
    invoke-interface {p1, v1, p0, p2}, Lo/fP;->extraCallback(Ljava/lang/Object;Lo/ef;Lo/getMaxSize;)V

    .line 71
    invoke-interface {p1, v1}, Lo/fP;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 72
    iget p1, p0, Lo/eP;->onNavigationEvent:I

    iget p2, p0, Lo/eP;->extraCallback:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    .line 75
    iput v0, p0, Lo/eP;->extraCallback:I

    return-object v1

    .line 73
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->asBinder()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 77
    iput v0, p0, Lo/eP;->extraCallback:I

    .line 78
    throw p1
.end method

.method private static onMessageChannelReady(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    .line 741
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->asBinder()Lcom/google/android/gms/internal/measurement/zzig;

    move-result-object p0

    throw p0
.end method

.method private final onMessageChannelReady(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    iget v0, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 405
    instance-of v0, p1, Lo/eC;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 406
    move-object v0, p1

    check-cast v0, Lo/eC;

    .line 407
    :cond_0
    invoke-virtual {p0}, Lo/eP;->ICustomTabsCallback$Stub$Proxy()Lo/ac$1;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/eC;->onNavigationEvent(Lo/ac$1;)V

    .line 408
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->mayLaunchUrl()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 410
    :cond_1
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->onPostMessage()I

    move-result p1

    .line 411
    iget p2, p0, Lo/eP;->onNavigationEvent:I

    if-eq p1, p2, :cond_0

    .line 412
    iput p1, p0, Lo/eP;->ICustomTabsCallback:I

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 415
    invoke-virtual {p0}, Lo/eP;->warmup()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lo/eP;->ICustomTabsService()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 418
    :cond_4
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->onPostMessage()I

    move-result v0

    .line 419
    iget v1, p0, Lo/eP;->onNavigationEvent:I

    if-eq v0, v1, :cond_2

    .line 420
    iput v0, p0, Lo/eP;->ICustomTabsCallback:I

    return-void

    .line 404
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1
.end method

.method private final onNavigationEvent(Lo/dB;Ljava/lang/Class;Lo/getMaxSize;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/dB;",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/getMaxSize;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 718
    sget-object v0, Lo/getTextDirection;->extraCallback:[I

    invoke-virtual {p1}, Lo/dB;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 739
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 738
    :pswitch_0
    invoke-virtual {p0}, Lo/eP;->onRelationshipValidationResult()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 737
    :pswitch_1
    invoke-virtual {p0}, Lo/eP;->getInterfaceDescriptor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 736
    :pswitch_2
    invoke-virtual {p0}, Lo/eP;->warmup()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 735
    :pswitch_3
    invoke-virtual {p0}, Lo/eP;->mayLaunchUrl()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 734
    :pswitch_4
    invoke-virtual {p0}, Lo/eP;->requestPostMessageChannel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 733
    :pswitch_5
    invoke-virtual {p0}, Lo/eP;->updateVisuals()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 732
    :pswitch_6
    invoke-virtual {p0}, Lo/eP;->extraCommand()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_7
    const/4 p1, 0x2

    .line 729
    invoke-direct {p0, p1}, Lo/eP;->onPostMessage(I)V

    .line 730
    invoke-static {}, Lo/getJSONObject;->onPostMessage()Lo/getJSONObject;

    move-result-object p1

    invoke-virtual {p1, p2}, Lo/getJSONObject;->onNavigationEvent(Ljava/lang/Class;)Lo/fP;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lo/eP;->ICustomTabsCallback(Lo/fP;Lo/getMaxSize;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 727
    :pswitch_8
    invoke-virtual {p0}, Lo/eP;->asInterface()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 726
    :pswitch_9
    invoke-virtual {p0}, Lo/eP;->asBinder()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 725
    :pswitch_a
    invoke-virtual {p0}, Lo/eP;->onPostMessage()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 724
    :pswitch_b
    invoke-virtual {p0}, Lo/eP;->ICustomTabsCallback$Stub()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 723
    :pswitch_c
    invoke-virtual {p0}, Lo/eP;->onTransact()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 722
    :pswitch_d
    invoke-virtual {p0}, Lo/eP;->postMessage()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 721
    :pswitch_e
    invoke-virtual {p0}, Lo/eP;->extraCallback()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 720
    :pswitch_f
    invoke-virtual {p0}, Lo/eP;->ICustomTabsCallback$Stub$Proxy()Lo/ac$1;

    move-result-object p1

    return-object p1

    .line 719
    :pswitch_10
    invoke-virtual {p0}, Lo/eP;->newSession()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static onPostMessage(Lo/eL;)Lo/eP;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/eL;->extraCallback:Lo/eP;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lo/eL;->extraCallback:Lo/eP;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lo/eP;

    invoke-direct {v0, p0}, Lo/eP;-><init>(Lo/eL;)V

    return-object v0
.end method

.method private final onPostMessage(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    iget v0, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 18
    iget v0, p0, Lo/eP;->onNavigationEvent:I

    return v0
.end method

.method public final ICustomTabsCallback(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    instance-of v0, p1, Lo/gz;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 170
    move-object v0, p1

    check-cast v0, Lo/gz;

    .line 171
    iget p1, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 174
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsService()I

    move-result p1

    .line 175
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, p1

    .line 176
    :cond_0
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->extraCallback()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo/gz;->ICustomTabsCallback(J)V

    .line 177
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 178
    invoke-direct {p0, v1}, Lo/eP;->ICustomTabsCallback(I)V

    return-void

    .line 188
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1

    .line 180
    :cond_2
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->extraCallback()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/gz;->ICustomTabsCallback(J)V

    .line 181
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->mayLaunchUrl()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 183
    :cond_3
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->onPostMessage()I

    move-result p1

    .line 184
    iget v1, p0, Lo/eP;->onNavigationEvent:I

    if-eq p1, v1, :cond_2

    .line 185
    iput p1, p0, Lo/eP;->ICustomTabsCallback:I

    return-void

    .line 189
    :cond_4
    iget v0, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 192
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService()I

    move-result v0

    .line 193
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, v0

    .line 194
    :cond_5
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->extraCallback()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 196
    invoke-direct {p0, v1}, Lo/eP;->ICustomTabsCallback(I)V

    return-void

    .line 206
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1

    .line 198
    :cond_7
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->extraCallback()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 201
    :cond_8
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->onPostMessage()I

    move-result v0

    .line 202
    iget v1, p0, Lo/eP;->onNavigationEvent:I

    if-eq v0, v1, :cond_7

    .line 203
    iput v0, p0, Lo/eP;->ICustomTabsCallback:I

    return-void
.end method

.method public final ICustomTabsCallback(Ljava/util/List;Lo/fP;Lo/getMaxSize;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lo/fP<",
            "TT;>;",
            "Lo/getMaxSize;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 436
    iget v0, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 441
    :cond_0
    invoke-direct {p0, p2, p3}, Lo/eP;->onMessageChannelReady(Lo/fP;Lo/getMaxSize;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->mayLaunchUrl()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lo/eP;->ICustomTabsCallback:I

    if-eqz v1, :cond_1

    goto :goto_0

    .line 444
    :cond_1
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->onPostMessage()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 446
    iput v1, p0, Lo/eP;->ICustomTabsCallback:I

    :cond_2
    :goto_0
    return-void

    .line 439
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1
.end method

.method public final ICustomTabsCallback$Stub()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 37
    invoke-direct {p0, v0}, Lo/eP;->onPostMessage(I)V

    .line 38
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->onRelationshipValidationResult()J

    move-result-wide v0

    return-wide v0
.end method

.method public final ICustomTabsCallback$Stub(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 397
    invoke-direct {p0, p1, v0}, Lo/eP;->onMessageChannelReady(Ljava/util/List;Z)V

    return-void
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Lo/ac$1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 79
    invoke-direct {p0, v0}, Lo/eP;->onPostMessage(I)V

    .line 80
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->warmup()Lo/ac$1;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub$Proxy(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    instance-of v0, p1, Lo/eN;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 462
    move-object v0, p1

    check-cast v0, Lo/eN;

    .line 463
    iget p1, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 466
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsService()I

    move-result p1

    .line 467
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, p1

    .line 468
    :cond_0
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsService()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/eN;->onPostMessage(I)V

    .line 469
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 470
    invoke-direct {p0, v1}, Lo/eP;->ICustomTabsCallback(I)V

    return-void

    .line 480
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1

    .line 472
    :cond_2
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsService()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/eN;->onPostMessage(I)V

    .line 473
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->mayLaunchUrl()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 475
    :cond_3
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->onPostMessage()I

    move-result p1

    .line 476
    iget v1, p0, Lo/eP;->onNavigationEvent:I

    if-eq p1, v1, :cond_2

    .line 477
    iput p1, p0, Lo/eP;->ICustomTabsCallback:I

    return-void

    .line 481
    :cond_4
    iget v0, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 484
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService()I

    move-result v0

    .line 485
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, v0

    .line 486
    :cond_5
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 488
    invoke-direct {p0, v1}, Lo/eP;->ICustomTabsCallback(I)V

    return-void

    .line 498
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1

    .line 490
    :cond_7
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 493
    :cond_8
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->onPostMessage()I

    move-result v0

    .line 494
    iget v1, p0, Lo/eP;->onNavigationEvent:I

    if-eq v0, v1, :cond_7

    .line 495
    iput v0, p0, Lo/eP;->ICustomTabsCallback:I

    return-void
.end method

.method public final ICustomTabsService()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 43
    invoke-direct {p0, v0}, Lo/eP;->onPostMessage(I)V

    .line 44
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->asInterface()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsService(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    instance-of v0, p1, Lo/eN;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 538
    move-object v0, p1

    check-cast v0, Lo/eN;

    .line 539
    iget p1, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 548
    :cond_0
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->newSession()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/eN;->onPostMessage(I)V

    .line 549
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->mayLaunchUrl()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 551
    :cond_1
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->onPostMessage()I

    move-result p1

    .line 552
    iget v1, p0, Lo/eP;->onNavigationEvent:I

    if-eq p1, v1, :cond_0

    .line 553
    iput p1, p0, Lo/eP;->ICustomTabsCallback:I

    return-void

    .line 556
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1

    .line 542
    :cond_3
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsService()I

    move-result p1

    .line 543
    invoke-static {p1}, Lo/eP;->onMessageChannelReady(I)V

    .line 544
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int v3, v1, p1

    .line 545
    :cond_4
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->newSession()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/eN;->onPostMessage(I)V

    .line 546
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    .line 557
    :cond_5
    iget v0, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 566
    :cond_6
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->newSession()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 569
    :cond_7
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->onPostMessage()I

    move-result v0

    .line 570
    iget v1, p0, Lo/eP;->onNavigationEvent:I

    if-eq v0, v1, :cond_6

    .line 571
    iput v0, p0, Lo/eP;->ICustomTabsCallback:I

    return-void

    .line 574
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1

    .line 560
    :cond_9
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService()I

    move-result v0

    .line 561
    invoke-static {v0}, Lo/eP;->onMessageChannelReady(I)V

    .line 562
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, v0

    .line 563
    :cond_a
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->newSession()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final asBinder()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0}, Lo/eP;->onPostMessage(I)V

    .line 36
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsCallback$Stub()I

    move-result v0

    return v0
.end method

.method public final asBinder(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 399
    invoke-direct {p0, p1, v0}, Lo/eP;->onMessageChannelReady(Ljava/util/List;Z)V

    return-void
.end method

.method public final asInterface()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, v0}, Lo/eP;->onPostMessage(I)V

    .line 34
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsCallback()J

    move-result-wide v0

    return-wide v0
.end method

.method public final asInterface(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    instance-of v0, p1, Lo/gz;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 284
    move-object v0, p1

    check-cast v0, Lo/gz;

    .line 285
    iget p1, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 288
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsService()I

    move-result p1

    .line 289
    invoke-static {p1}, Lo/eP;->extraCallback(I)V

    .line 290
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, p1

    .line 291
    :cond_0
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->onRelationshipValidationResult()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo/gz;->ICustomTabsCallback(J)V

    .line 292
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    .line 302
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1

    .line 294
    :cond_2
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->onRelationshipValidationResult()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/gz;->ICustomTabsCallback(J)V

    .line 295
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->mayLaunchUrl()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 297
    :cond_3
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->onPostMessage()I

    move-result p1

    .line 298
    iget v1, p0, Lo/eP;->onNavigationEvent:I

    if-eq p1, v1, :cond_2

    .line 299
    iput p1, p0, Lo/eP;->ICustomTabsCallback:I

    return-void

    .line 303
    :cond_4
    iget v0, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 306
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService()I

    move-result v0

    .line 307
    invoke-static {v0}, Lo/eP;->extraCallback(I)V

    .line 308
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, v0

    .line 309
    :cond_5
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->onRelationshipValidationResult()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    .line 320
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1

    .line 312
    :cond_7
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->onRelationshipValidationResult()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 315
    :cond_8
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->onPostMessage()I

    move-result v0

    .line 316
    iget v1, p0, Lo/eP;->onNavigationEvent:I

    if-eq v0, v1, :cond_7

    .line 317
    iput v0, p0, Lo/eP;->ICustomTabsCallback:I

    return-void
.end method

.method public final extraCallback()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 27
    invoke-direct {p0, v0}, Lo/eP;->onPostMessage(I)V

    .line 28
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->onMessageChannelReady()D

    move-result-wide v0

    return-wide v0
.end method

.method public final extraCallback(Lo/fP;Lo/getMaxSize;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/fP<",
            "TT;>;",
            "Lo/getMaxSize;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 49
    invoke-direct {p0, v0}, Lo/eP;->onPostMessage(I)V

    .line 50
    invoke-direct {p0, p1, p2}, Lo/eP;->onMessageChannelReady(Lo/fP;Lo/getMaxSize;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    instance-of v0, p1, Lo/eN;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 246
    move-object v0, p1

    check-cast v0, Lo/eN;

    .line 247
    iget p1, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 250
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsService()I

    move-result p1

    .line 251
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, p1

    .line 252
    :cond_0
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsCallback$Stub()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/eN;->onPostMessage(I)V

    .line 253
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 254
    invoke-direct {p0, v1}, Lo/eP;->ICustomTabsCallback(I)V

    return-void

    .line 264
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1

    .line 256
    :cond_2
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsCallback$Stub()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/eN;->onPostMessage(I)V

    .line 257
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->mayLaunchUrl()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 259
    :cond_3
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->onPostMessage()I

    move-result p1

    .line 260
    iget v1, p0, Lo/eP;->onNavigationEvent:I

    if-eq p1, v1, :cond_2

    .line 261
    iput p1, p0, Lo/eP;->ICustomTabsCallback:I

    return-void

    .line 265
    :cond_4
    iget v0, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 268
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService()I

    move-result v0

    .line 269
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, v0

    .line 270
    :cond_5
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsCallback$Stub()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 272
    invoke-direct {p0, v1}, Lo/eP;->ICustomTabsCallback(I)V

    return-void

    .line 282
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1

    .line 274
    :cond_7
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsCallback$Stub()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 277
    :cond_8
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->onPostMessage()I

    move-result v0

    .line 278
    iget v1, p0, Lo/eP;->onNavigationEvent:I

    if-eq v0, v1, :cond_7

    .line 279
    iput v0, p0, Lo/eP;->ICustomTabsCallback:I

    return-void
.end method

.method public final extraCallback(Ljava/util/List;Lo/fP;Lo/getMaxSize;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lo/fP<",
            "TT;>;",
            "Lo/getMaxSize;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    iget v0, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 428
    :cond_0
    invoke-direct {p0, p2, p3}, Lo/eP;->ICustomTabsCallback(Lo/fP;Lo/getMaxSize;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->mayLaunchUrl()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lo/eP;->ICustomTabsCallback:I

    if-eqz v1, :cond_1

    goto :goto_0

    .line 431
    :cond_1
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->onPostMessage()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 433
    iput v1, p0, Lo/eP;->ICustomTabsCallback:I

    :cond_2
    :goto_0
    return-void

    .line 426
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1
.end method

.method public final extraCommand()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 85
    invoke-direct {p0, v0}, Lo/eP;->onPostMessage(I)V

    .line 86
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->newSession()I

    move-result v0

    return v0
.end method

.method public final extraCommand(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 651
    instance-of v0, p1, Lo/gz;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 652
    move-object v0, p1

    check-cast v0, Lo/gz;

    .line 653
    iget p1, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 656
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsService()I

    move-result p1

    .line 657
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, p1

    .line 658
    :cond_0
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->postMessage()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo/gz;->ICustomTabsCallback(J)V

    .line 659
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 660
    invoke-direct {p0, v1}, Lo/eP;->ICustomTabsCallback(I)V

    return-void

    .line 670
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1

    .line 662
    :cond_2
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->postMessage()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/gz;->ICustomTabsCallback(J)V

    .line 663
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->mayLaunchUrl()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 665
    :cond_3
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->onPostMessage()I

    move-result p1

    .line 666
    iget v1, p0, Lo/eP;->onNavigationEvent:I

    if-eq p1, v1, :cond_2

    .line 667
    iput p1, p0, Lo/eP;->ICustomTabsCallback:I

    return-void

    .line 671
    :cond_4
    iget v0, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 674
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService()I

    move-result v0

    .line 675
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, v0

    .line 676
    :cond_5
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->postMessage()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 678
    invoke-direct {p0, v1}, Lo/eP;->ICustomTabsCallback(I)V

    return-void

    .line 688
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1

    .line 680
    :cond_7
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->postMessage()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 683
    :cond_8
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->onPostMessage()I

    move-result v0

    .line 684
    iget v1, p0, Lo/eP;->onNavigationEvent:I

    if-eq v0, v1, :cond_7

    .line 685
    iput v0, p0, Lo/eP;->ICustomTabsCallback:I

    return-void
.end method

.method public final getInterfaceDescriptor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, v0}, Lo/eP;->onPostMessage(I)V

    .line 82
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService()I

    move-result v0

    return v0
.end method

.method public final getInterfaceDescriptor(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 575
    instance-of v0, p1, Lo/gz;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 576
    move-object v0, p1

    check-cast v0, Lo/gz;

    .line 577
    iget p1, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 580
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsService()I

    move-result p1

    .line 581
    invoke-static {p1}, Lo/eP;->extraCallback(I)V

    .line 582
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, p1

    .line 583
    :cond_0
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->requestPostMessageChannel()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo/gz;->ICustomTabsCallback(J)V

    .line 584
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    .line 594
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1

    .line 586
    :cond_2
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->requestPostMessageChannel()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/gz;->ICustomTabsCallback(J)V

    .line 587
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->mayLaunchUrl()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 589
    :cond_3
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->onPostMessage()I

    move-result p1

    .line 590
    iget v1, p0, Lo/eP;->onNavigationEvent:I

    if-eq p1, v1, :cond_2

    .line 591
    iput p1, p0, Lo/eP;->ICustomTabsCallback:I

    return-void

    .line 595
    :cond_4
    iget v0, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 598
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService()I

    move-result v0

    .line 599
    invoke-static {v0}, Lo/eP;->extraCallback(I)V

    .line 600
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, v0

    .line 601
    :cond_5
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->requestPostMessageChannel()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    .line 612
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1

    .line 604
    :cond_7
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->requestPostMessageChannel()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 607
    :cond_8
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->onPostMessage()I

    move-result v0

    .line 608
    iget v1, p0, Lo/eP;->onNavigationEvent:I

    if-eq v0, v1, :cond_7

    .line 609
    iput v0, p0, Lo/eP;->ICustomTabsCallback:I

    return-void
.end method

.method public final mayLaunchUrl()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, v0}, Lo/eP;->onPostMessage(I)V

    .line 92
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->postMessage()J

    move-result-wide v0

    return-wide v0
.end method

.method public final newSession(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/ac$1;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    iget v0, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 453
    :cond_0
    invoke-virtual {p0}, Lo/eP;->ICustomTabsCallback$Stub$Proxy()Lo/ac$1;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 456
    :cond_1
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->onPostMessage()I

    move-result v0

    .line 457
    iget v1, p0, Lo/eP;->onNavigationEvent:I

    if-eq v0, v1, :cond_0

    .line 458
    iput v0, p0, Lo/eP;->ICustomTabsCallback:I

    return-void

    .line 452
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1
.end method

.method public final newSession()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, v0}, Lo/eP;->onPostMessage(I)V

    .line 42
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->asBinder()Z

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    instance-of v0, p1, Lo/fW;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 94
    move-object v0, p1

    check-cast v0, Lo/fW;

    .line 95
    iget p1, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 98
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsService()I

    move-result p1

    .line 99
    invoke-static {p1}, Lo/eP;->extraCallback(I)V

    .line 100
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, p1

    .line 101
    :cond_0
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->onMessageChannelReady()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo/fW;->onNavigationEvent(D)V

    .line 102
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    .line 112
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1

    .line 104
    :cond_2
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->onMessageChannelReady()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/fW;->onNavigationEvent(D)V

    .line 105
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->mayLaunchUrl()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 107
    :cond_3
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->onPostMessage()I

    move-result p1

    .line 108
    iget v1, p0, Lo/eP;->onNavigationEvent:I

    if-eq p1, v1, :cond_2

    .line 109
    iput p1, p0, Lo/eP;->ICustomTabsCallback:I

    return-void

    .line 113
    :cond_4
    iget v0, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 116
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService()I

    move-result v0

    .line 117
    invoke-static {v0}, Lo/eP;->extraCallback(I)V

    .line 118
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, v0

    .line 119
    :cond_5
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->onMessageChannelReady()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    .line 130
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1

    .line 122
    :cond_7
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->onMessageChannelReady()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 125
    :cond_8
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->onPostMessage()I

    move-result v0

    .line 126
    iget v1, p0, Lo/eP;->onNavigationEvent:I

    if-eq v0, v1, :cond_7

    .line 127
    iput v0, p0, Lo/eP;->ICustomTabsCallback:I

    return-void
.end method

.method public final onMessageChannelReady(Ljava/util/Map;Lo/ec;Lo/getMaxSize;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lo/ec<",
            "TK;TV;>;",
            "Lo/getMaxSize;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 692
    invoke-direct {p0, v0}, Lo/eP;->onPostMessage(I)V

    .line 693
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->ICustomTabsService()I

    move-result v1

    .line 694
    iget-object v2, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v2, v1}, Lo/eL;->ICustomTabsCallback(I)I

    move-result v1

    .line 695
    iget-object v2, p2, Lo/ec;->onMessageChannelReady:Ljava/lang/Object;

    .line 696
    iget-object v3, p2, Lo/ec;->ICustomTabsCallback:Ljava/lang/Object;

    .line 697
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lo/eP;->onNavigationEvent()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_4

    .line 698
    iget-object v5, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v5}, Lo/eL;->mayLaunchUrl()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_4

    const/4 v5, 0x1

    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_2

    if-eq v4, v0, :cond_1

    .line 706
    :try_start_1
    invoke-virtual {p0}, Lo/eP;->onMessageChannelReady()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 707
    :cond_0
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzig;

    invoke-direct {v4, v6}, Lcom/google/android/gms/internal/measurement/zzig;-><init>(Ljava/lang/String;)V

    throw v4

    .line 702
    :cond_1
    iget-object v4, p2, Lo/ec;->onNavigationEvent:Lo/dB;

    iget-object v5, p2, Lo/ec;->ICustomTabsCallback:Ljava/lang/Object;

    .line 703
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 704
    invoke-direct {p0, v4, v5, p3}, Lo/eP;->onNavigationEvent(Lo/dB;Ljava/lang/Class;Lo/getMaxSize;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 700
    :cond_2
    iget-object v4, p2, Lo/ec;->extraCallback:Lo/dB;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v5}, Lo/eP;->onNavigationEvent(Lo/dB;Ljava/lang/Class;Lo/getMaxSize;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Lcom/google/android/gms/internal/measurement/zzif; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 710
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lo/eP;->onMessageChannelReady()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 711
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzig;

    invoke-direct {p1, v6}, Lcom/google/android/gms/internal/measurement/zzig;-><init>(Ljava/lang/String;)V

    throw p1

    .line 713
    :cond_4
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 714
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1, v1}, Lo/eL;->onNavigationEvent(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 716
    iget-object p2, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p2, v1}, Lo/eL;->onNavigationEvent(I)V

    .line 717
    throw p1
.end method

.method public final onMessageChannelReady()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->mayLaunchUrl()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lo/eP;->onNavigationEvent:I

    iget v1, p0, Lo/eP;->extraCallback:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1, v0}, Lo/eL;->onMessageChannelReady(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onNavigationEvent()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget v0, p0, Lo/eP;->ICustomTabsCallback:I

    if-eqz v0, :cond_0

    .line 10
    iput v0, p0, Lo/eP;->onNavigationEvent:I

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lo/eP;->ICustomTabsCallback:I

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->onPostMessage()I

    move-result v0

    iput v0, p0, Lo/eP;->onNavigationEvent:I

    .line 13
    :goto_0
    iget v0, p0, Lo/eP;->onNavigationEvent:I

    if-eqz v0, :cond_2

    iget v1, p0, Lo/eP;->extraCallback:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v0, v0, 0x3

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public final onNavigationEvent(Lo/fP;Lo/getMaxSize;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/fP<",
            "TT;>;",
            "Lo/getMaxSize;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 47
    invoke-direct {p0, v0}, Lo/eP;->onPostMessage(I)V

    .line 48
    invoke-direct {p0, p1, p2}, Lo/eP;->ICustomTabsCallback(Lo/fP;Lo/getMaxSize;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    instance-of v0, p1, Lo/eW;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 132
    move-object v0, p1

    check-cast v0, Lo/eW;

    .line 133
    iget p1, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 142
    :cond_0
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->onNavigationEvent()F

    move-result p1

    invoke-virtual {v0, p1}, Lo/eW;->extraCallback(F)V

    .line 143
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->mayLaunchUrl()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 145
    :cond_1
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->onPostMessage()I

    move-result p1

    .line 146
    iget v1, p0, Lo/eP;->onNavigationEvent:I

    if-eq p1, v1, :cond_0

    .line 147
    iput p1, p0, Lo/eP;->ICustomTabsCallback:I

    return-void

    .line 150
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1

    .line 136
    :cond_3
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsService()I

    move-result p1

    .line 137
    invoke-static {p1}, Lo/eP;->onMessageChannelReady(I)V

    .line 138
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int v3, v1, p1

    .line 139
    :cond_4
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->onNavigationEvent()F

    move-result p1

    invoke-virtual {v0, p1}, Lo/eW;->extraCallback(F)V

    .line 140
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    .line 151
    :cond_5
    iget v0, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 160
    :cond_6
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->onNavigationEvent()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 163
    :cond_7
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->onPostMessage()I

    move-result v0

    .line 164
    iget v1, p0, Lo/eP;->onNavigationEvent:I

    if-eq v0, v1, :cond_6

    .line 165
    iput v0, p0, Lo/eP;->ICustomTabsCallback:I

    return-void

    .line 168
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1

    .line 154
    :cond_9
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService()I

    move-result v0

    .line 155
    invoke-static {v0}, Lo/eP;->onMessageChannelReady(I)V

    .line 156
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, v0

    .line 157
    :cond_a
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->onNavigationEvent()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final onPostMessage()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 29
    invoke-direct {p0, v0}, Lo/eP;->onPostMessage(I)V

    .line 30
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->onNavigationEvent()F

    move-result v0

    return v0
.end method

.method public final onPostMessage(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    instance-of v0, p1, Lo/gz;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 208
    move-object v0, p1

    check-cast v0, Lo/gz;

    .line 209
    iget p1, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 212
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsService()I

    move-result p1

    .line 213
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, p1

    .line 214
    :cond_0
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsCallback()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lo/gz;->ICustomTabsCallback(J)V

    .line 215
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 216
    invoke-direct {p0, v1}, Lo/eP;->ICustomTabsCallback(I)V

    return-void

    .line 226
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1

    .line 218
    :cond_2
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsCallback()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/gz;->ICustomTabsCallback(J)V

    .line 219
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->mayLaunchUrl()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 221
    :cond_3
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->onPostMessage()I

    move-result p1

    .line 222
    iget v1, p0, Lo/eP;->onNavigationEvent:I

    if-eq p1, v1, :cond_2

    .line 223
    iput p1, p0, Lo/eP;->ICustomTabsCallback:I

    return-void

    .line 227
    :cond_4
    iget v0, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 230
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService()I

    move-result v0

    .line 231
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, v0

    .line 232
    :cond_5
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsCallback()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 234
    invoke-direct {p0, v1}, Lo/eP;->ICustomTabsCallback(I)V

    return-void

    .line 244
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1

    .line 236
    :cond_7
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsCallback()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 239
    :cond_8
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->onPostMessage()I

    move-result v0

    .line 240
    iget v1, p0, Lo/eP;->onNavigationEvent:I

    if-eq v0, v1, :cond_7

    .line 241
    iput v0, p0, Lo/eP;->ICustomTabsCallback:I

    return-void
.end method

.method public final onRelationshipValidationResult()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, v0}, Lo/eP;->onPostMessage(I)V

    .line 32
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->extraCallback()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onRelationshipValidationResult(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    instance-of v0, p1, Lo/eN;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 322
    move-object v0, p1

    check-cast v0, Lo/eN;

    .line 323
    iget p1, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 332
    :cond_0
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->onTransact()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/eN;->onPostMessage(I)V

    .line 333
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->mayLaunchUrl()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 335
    :cond_1
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->onPostMessage()I

    move-result p1

    .line 336
    iget v1, p0, Lo/eP;->onNavigationEvent:I

    if-eq p1, v1, :cond_0

    .line 337
    iput p1, p0, Lo/eP;->ICustomTabsCallback:I

    return-void

    .line 340
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1

    .line 326
    :cond_3
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsService()I

    move-result p1

    .line 327
    invoke-static {p1}, Lo/eP;->onMessageChannelReady(I)V

    .line 328
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int v3, v1, p1

    .line 329
    :cond_4
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->onTransact()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/eN;->onPostMessage(I)V

    .line 330
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    .line 341
    :cond_5
    iget v0, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 350
    :cond_6
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->onTransact()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 353
    :cond_7
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->onPostMessage()I

    move-result v0

    .line 354
    iget v1, p0, Lo/eP;->onNavigationEvent:I

    if-eq v0, v1, :cond_6

    .line 355
    iput v0, p0, Lo/eP;->ICustomTabsCallback:I

    return-void

    .line 358
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1

    .line 344
    :cond_9
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService()I

    move-result v0

    .line 345
    invoke-static {v0}, Lo/eP;->onMessageChannelReady(I)V

    .line 346
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, v0

    .line 347
    :cond_a
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->onTransact()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final onTransact()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 39
    invoke-direct {p0, v0}, Lo/eP;->onPostMessage(I)V

    .line 40
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->onTransact()I

    move-result v0

    return v0
.end method

.method public final onTransact(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    instance-of v0, p1, Lo/eH;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 360
    move-object v0, p1

    check-cast v0, Lo/eH;

    .line 361
    iget p1, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 364
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsService()I

    move-result p1

    .line 365
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, p1

    .line 366
    :cond_0
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->asBinder()Z

    move-result p1

    invoke-virtual {v0, p1}, Lo/eH;->onMessageChannelReady(Z)V

    .line 367
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 368
    invoke-direct {p0, v1}, Lo/eP;->ICustomTabsCallback(I)V

    return-void

    .line 378
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1

    .line 370
    :cond_2
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->asBinder()Z

    move-result p1

    invoke-virtual {v0, p1}, Lo/eH;->onMessageChannelReady(Z)V

    .line 371
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->mayLaunchUrl()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 373
    :cond_3
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->onPostMessage()I

    move-result p1

    .line 374
    iget v1, p0, Lo/eP;->onNavigationEvent:I

    if-eq p1, v1, :cond_2

    .line 375
    iput p1, p0, Lo/eP;->ICustomTabsCallback:I

    return-void

    .line 379
    :cond_4
    iget v0, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 382
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService()I

    move-result v0

    .line 383
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, v0

    .line 384
    :cond_5
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->asBinder()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 386
    invoke-direct {p0, v1}, Lo/eP;->ICustomTabsCallback(I)V

    return-void

    .line 396
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1

    .line 388
    :cond_7
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->asBinder()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 391
    :cond_8
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->onPostMessage()I

    move-result v0

    .line 392
    iget v1, p0, Lo/eP;->onNavigationEvent:I

    if-eq v0, v1, :cond_7

    .line 393
    iput v0, p0, Lo/eP;->ICustomTabsCallback:I

    return-void
.end method

.method public final postMessage()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, v0}, Lo/eP;->onPostMessage(I)V

    .line 84
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    return v0
.end method

.method public final postMessage(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 613
    instance-of v0, p1, Lo/eN;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 614
    move-object v0, p1

    check-cast v0, Lo/eN;

    .line 615
    iget p1, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 618
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsService()I

    move-result p1

    .line 619
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, p1

    .line 620
    :cond_0
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->extraCommand()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/eN;->onPostMessage(I)V

    .line 621
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 622
    invoke-direct {p0, v1}, Lo/eP;->ICustomTabsCallback(I)V

    return-void

    .line 632
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1

    .line 624
    :cond_2
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->extraCommand()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/eN;->onPostMessage(I)V

    .line 625
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->mayLaunchUrl()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 627
    :cond_3
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->onPostMessage()I

    move-result p1

    .line 628
    iget v1, p0, Lo/eP;->onNavigationEvent:I

    if-eq p1, v1, :cond_2

    .line 629
    iput p1, p0, Lo/eP;->ICustomTabsCallback:I

    return-void

    .line 633
    :cond_4
    iget v0, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 636
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService()I

    move-result v0

    .line 637
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, v0

    .line 638
    :cond_5
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->extraCommand()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 640
    invoke-direct {p0, v1}, Lo/eP;->ICustomTabsCallback(I)V

    return-void

    .line 650
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1

    .line 642
    :cond_7
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->extraCommand()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 645
    :cond_8
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->onPostMessage()I

    move-result v0

    .line 646
    iget v1, p0, Lo/eP;->onNavigationEvent:I

    if-eq v0, v1, :cond_7

    .line 647
    iput v0, p0, Lo/eP;->ICustomTabsCallback:I

    return-void
.end method

.method public final requestPostMessageChannel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, v0}, Lo/eP;->onPostMessage(I)V

    .line 90
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->extraCommand()I

    move-result v0

    return v0
.end method

.method public final updateVisuals()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 87
    invoke-direct {p0, v0}, Lo/eP;->onPostMessage(I)V

    .line 88
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->requestPostMessageChannel()J

    move-result-wide v0

    return-wide v0
.end method

.method public final warmup()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 45
    invoke-direct {p0, v0}, Lo/eP;->onPostMessage(I)V

    .line 46
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final warmup(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 499
    instance-of v0, p1, Lo/eN;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 500
    move-object v0, p1

    check-cast v0, Lo/eN;

    .line 501
    iget p1, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 504
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsService()I

    move-result p1

    .line 505
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, p1

    .line 506
    :cond_0
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsCallback$Stub$Proxy()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/eN;->onPostMessage(I)V

    .line 507
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 508
    invoke-direct {p0, v1}, Lo/eP;->ICustomTabsCallback(I)V

    return-void

    .line 518
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1

    .line 510
    :cond_2
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->ICustomTabsCallback$Stub$Proxy()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/eN;->onPostMessage(I)V

    .line 511
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->mayLaunchUrl()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 513
    :cond_3
    iget-object p1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {p1}, Lo/eL;->onPostMessage()I

    move-result p1

    .line 514
    iget v1, p0, Lo/eP;->onNavigationEvent:I

    if-eq p1, v1, :cond_2

    .line 515
    iput p1, p0, Lo/eP;->ICustomTabsCallback:I

    return-void

    .line 519
    :cond_4
    iget v0, p0, Lo/eP;->onNavigationEvent:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 522
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService()I

    move-result v0

    .line 523
    iget-object v1, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v1}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v1

    add-int/2addr v1, v0

    .line 524
    :cond_5
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsService$Stub$Proxy()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 526
    invoke-direct {p0, v1}, Lo/eP;->ICustomTabsCallback(I)V

    return-void

    .line 536
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzig;->onTransact()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object p1

    throw p1

    .line 528
    :cond_7
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->mayLaunchUrl()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 531
    :cond_8
    iget-object v0, p0, Lo/eP;->onMessageChannelReady:Lo/eL;

    invoke-virtual {v0}, Lo/eL;->onPostMessage()I

    move-result v0

    .line 532
    iget v1, p0, Lo/eP;->onNavigationEvent:I

    if-eq v0, v1, :cond_7

    .line 533
    iput v0, p0, Lo/eP;->ICustomTabsCallback:I

    return-void
.end method
