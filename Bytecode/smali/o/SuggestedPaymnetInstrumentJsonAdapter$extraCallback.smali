.class public final Lo/SuggestedPaymnetInstrumentJsonAdapter$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SuggestedPaymnetInstrumentJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/CheckoutBuilder$PolingRemoteConfig;

.field private final extraCallback:Landroid/content/Context;

.field private onMessageChannelReady:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private onNavigationEvent:I

.field private onPostMessage:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lo/SuggestedPaymnetInstrumentJsonAdapter$extraCallback;->extraCallback:Landroid/content/Context;

    .line 100
    invoke-static {p1}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/SuggestedPaymnetInstrumentJsonAdapter$extraCallback;->ICustomTabsCallback(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lo/SuggestedPaymnetInstrumentJsonAdapter$extraCallback;->onMessageChannelReady:Landroid/util/SparseArray;

    const/16 p1, 0x7d0

    .line 101
    iput p1, p0, Lo/SuggestedPaymnetInstrumentJsonAdapter$extraCallback;->onNavigationEvent:I

    .line 102
    sget-object p1, Lo/CheckoutBuilder$PolingRemoteConfig;->onPostMessage:Lo/CheckoutBuilder$PolingRemoteConfig;

    iput-object p1, p0, Lo/SuggestedPaymnetInstrumentJsonAdapter$extraCallback;->ICustomTabsCallback:Lo/CheckoutBuilder$PolingRemoteConfig;

    const/4 p1, 0x1

    .line 103
    iput-boolean p1, p0, Lo/SuggestedPaymnetInstrumentJsonAdapter$extraCallback;->onPostMessage:Z

    return-void
.end method

.method private static ICustomTabsCallback(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 197
    invoke-static {p0}, Lo/SuggestedPaymnetInstrumentJsonAdapter$extraCallback;->onPostMessage(Ljava/lang/String;)[I

    move-result-object p0

    .line 198
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    const-wide/32 v1, 0xf4240

    .line 199
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 200
    sget-object v1, Lo/SuggestedPaymnetInstrumentJsonAdapter;->onMessageChannelReady:[J

    aget v3, p0, v2

    aget-wide v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 201
    sget-object v1, Lo/SuggestedPaymnetInstrumentJsonAdapter;->onPostMessage:[J

    const/4 v4, 0x1

    aget v4, p0, v4

    aget-wide v4, v1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 202
    sget-object v1, Lo/SuggestedPaymnetInstrumentJsonAdapter;->extraCallback:[J

    aget v3, p0, v3

    aget-wide v5, v1, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 203
    sget-object v1, Lo/SuggestedPaymnetInstrumentJsonAdapter;->onNavigationEvent:[J

    aget v3, p0, v4

    aget-wide v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 205
    sget-object v1, Lo/SuggestedPaymnetInstrumentJsonAdapter;->onMessageChannelReady:[J

    aget p0, p0, v2

    aget-wide v2, v1, p0

    .line 206
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x7

    .line 205
    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-object v0
.end method

.method private static onPostMessage(Ljava/lang/String;)[I
    .locals 1

    .line 211
    sget-object v0, Lo/SuggestedPaymnetInstrumentJsonAdapter;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_0

    const/4 p0, 0x4

    new-array p0, p0, [I

    .line 213
    fill-array-data p0, :array_0

    :cond_0
    return-object p0

    nop

    :array_0
    .array-data 4
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method


# virtual methods
.method public final onMessageChannelReady()Lo/SuggestedPaymnetInstrumentJsonAdapter;
    .locals 8

    .line 188
    new-instance v7, Lo/SuggestedPaymnetInstrumentJsonAdapter;

    iget-object v1, p0, Lo/SuggestedPaymnetInstrumentJsonAdapter$extraCallback;->extraCallback:Landroid/content/Context;

    iget-object v2, p0, Lo/SuggestedPaymnetInstrumentJsonAdapter$extraCallback;->onMessageChannelReady:Landroid/util/SparseArray;

    iget v3, p0, Lo/SuggestedPaymnetInstrumentJsonAdapter$extraCallback;->onNavigationEvent:I

    iget-object v4, p0, Lo/SuggestedPaymnetInstrumentJsonAdapter$extraCallback;->ICustomTabsCallback:Lo/CheckoutBuilder$PolingRemoteConfig;

    iget-boolean v5, p0, Lo/SuggestedPaymnetInstrumentJsonAdapter$extraCallback;->onPostMessage:Z

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lo/SuggestedPaymnetInstrumentJsonAdapter;-><init>(Landroid/content/Context;Landroid/util/SparseArray;ILo/CheckoutBuilder$PolingRemoteConfig;ZLo/SuggestedPaymnetInstrumentJsonAdapter$2;)V

    return-object v7
.end method
