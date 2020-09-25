.class public final Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;
.super Lo/StaggeredGridLayoutManager;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$onPostMessage;,
        Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/NativeApi;
    extraCallback = true
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 02\u00020\u00012\u00020\u0002:\u00010BY\u0012\n\u0008\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0016\u0008\u0001\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\r\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\u000eJ\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u0017\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cH\u00c6\u0003J]\u0010\u001f\u001a\u00020\u00002\n\u0008\u0003\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0003\u0010\t\u001a\u0004\u0018\u00010\n2\u0016\u0008\u0003\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cH\u00c6\u0001J\t\u0010 \u001a\u00020!H\u00d6\u0001J\u0013\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u00d6\u0003J\u0010\u0010&\u001a\u0004\u0018\u00010\'2\u0006\u0010(\u001a\u00020\u0004J\t\u0010)\u001a\u00020!H\u00d6\u0001J\t\u0010*\u001a\u00020\u0004H\u00d6\u0001J\u0019\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020!H\u00d6\u0001R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0014R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0014R\u001f\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\r\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u00061"
    }
    d2 = {
        "Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;",
        "Landroid/os/Parcelable;",
        "Lcom/dreamplug/utils/list/ListItem;",
        "id",
        "",
        "paymentMethod",
        "paymentSubMethod",
        "action",
        "Lcom/cred/pay/repository/models/checkout/InstrumentAction;",
        "data",
        "Lcom/cred/pay/repository/models/checkout/InstrumentData;",
        "views",
        "",
        "Lcom/cred/pay/repository/models/checkout/InstrumentViewMapping;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cred/pay/repository/models/checkout/InstrumentAction;Lcom/cred/pay/repository/models/checkout/InstrumentData;Ljava/util/Map;)V",
        "getAction",
        "()Lcom/cred/pay/repository/models/checkout/InstrumentAction;",
        "getData",
        "()Lcom/cred/pay/repository/models/checkout/InstrumentData;",
        "getId",
        "()Ljava/lang/String;",
        "getPaymentMethod",
        "getPaymentSubMethod",
        "getViews",
        "()Ljava/util/Map;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "getView",
        "Lcom/cred/pay/repository/models/checkout/InstrumentView;",
        "instrumentViewType",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "Companion",
        "credpayrepository_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/String;

.field final ICustomTabsCallback$Stub:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cred/pay/repository/models/checkout/InstrumentViewMapping;",
            ">;"
        }
    .end annotation
.end field

.field public final extraCallback:Ljava/lang/String;

.field public final onMessageChannelReady:Ljava/lang/String;

.field public final onNavigationEvent:Lcom/cred/pay/repository/models/checkout/InstrumentAction;

.field public final onPostMessage:Lcom/cred/pay/repository/models/checkout/InstrumentData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$onPostMessage;

    invoke-direct {v0}, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$onPostMessage;-><init>()V

    sput-object v0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cred/pay/repository/models/checkout/InstrumentAction;Lcom/cred/pay/repository/models/checkout/InstrumentData;Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "payment_method"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "payment_sub_method"
        .end annotation
    .end param
    .param p4    # Lcom/cred/pay/repository/models/checkout/InstrumentAction;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "action"
        .end annotation
    .end param
    .param p5    # Lcom/cred/pay/repository/models/checkout/InstrumentData;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "data"
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "views"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/cred/pay/repository/models/checkout/InstrumentAction;",
            "Lcom/cred/pay/repository/models/checkout/InstrumentData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cred/pay/repository/models/checkout/InstrumentViewMapping;",
            ">;)V"
        }
    .end annotation

    .line 175
    invoke-direct {p0}, Lo/StaggeredGridLayoutManager;-><init>()V

    iput-object p1, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onMessageChannelReady:Ljava/lang/String;

    iput-object p2, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p3, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->extraCallback:Ljava/lang/String;

    iput-object p4, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/InstrumentAction;

    iput-object p5, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onPostMessage:Lcom/cred/pay/repository/models/checkout/InstrumentData;

    iput-object p6, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->ICustomTabsCallback$Stub:Ljava/util/Map;

    return-void
.end method

.method public static synthetic onPostMessage(Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;Lcom/cred/pay/repository/models/checkout/InstrumentAction;)Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;
    .locals 7

    iget-object v2, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v3, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->extraCallback:Ljava/lang/String;

    iget-object v5, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onPostMessage:Lcom/cred/pay/repository/models/checkout/InstrumentData;

    iget-object v6, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->ICustomTabsCallback$Stub:Ljava/util/Map;

    const/4 v1, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cred/pay/repository/models/checkout/InstrumentAction;Lcom/cred/pay/repository/models/checkout/InstrumentData;Ljava/util/Map;)Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cred/pay/repository/models/checkout/InstrumentAction;Lcom/cred/pay/repository/models/checkout/InstrumentData;Ljava/util/Map;)Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "payment_method"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "payment_sub_method"
        .end annotation
    .end param
    .param p4    # Lcom/cred/pay/repository/models/checkout/InstrumentAction;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "action"
        .end annotation
    .end param
    .param p5    # Lcom/cred/pay/repository/models/checkout/InstrumentData;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "data"
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "views"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/cred/pay/repository/models/checkout/InstrumentAction;",
            "Lcom/cred/pay/repository/models/checkout/InstrumentData;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cred/pay/repository/models/checkout/InstrumentViewMapping;",
            ">;)",
            "Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;"
        }
    .end annotation

    new-instance v7, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cred/pay/repository/models/checkout/InstrumentAction;Lcom/cred/pay/repository/models/checkout/InstrumentData;Ljava/util/Map;)V

    return-object v7
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onMessageChannelReady:Ljava/lang/String;

    iget-object v1, p1, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v1, p1, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->extraCallback:Ljava/lang/String;

    iget-object v1, p1, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->extraCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/InstrumentAction;

    iget-object v1, p1, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/InstrumentAction;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onPostMessage:Lcom/cred/pay/repository/models/checkout/InstrumentData;

    iget-object v1, p1, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onPostMessage:Lcom/cred/pay/repository/models/checkout/InstrumentData;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->ICustomTabsCallback$Stub:Ljava/util/Map;

    iget-object p1, p1, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->ICustomTabsCallback$Stub:Ljava/util/Map;

    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final extraCallback(Ljava/lang/String;)Lcom/cred/pay/repository/models/checkout/InstrumentView;
    .locals 5

    const-string v0, "instrumentViewType"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->ICustomTabsCallback$Stub:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 178
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cred/pay/repository/models/checkout/InstrumentViewMapping;

    if-nez p1, :cond_7

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->ICustomTabsCallback$Stub:Ljava/util/Map;

    if-eqz p1, :cond_6

    .line 264
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 265
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 179
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cred/pay/repository/models/checkout/InstrumentViewMapping;

    .line 1243
    iget-object v3, v3, Lcom/cred/pay/repository/models/checkout/InstrumentViewMapping;->onPostMessage:Ljava/lang/Boolean;

    .line 179
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 267
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 270
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_6

    check-cast p1, Ljava/lang/Iterable;

    const-string v0, "$this$firstOrNull"

    .line 179
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2224
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_4

    .line 2225
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 2228
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    .line 2231
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2232
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    :goto_1
    move-object p1, v1

    goto :goto_2

    .line 2234
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 179
    :goto_2
    check-cast p1, Lcom/cred/pay/repository/models/checkout/InstrumentViewMapping;

    goto :goto_3

    :cond_6
    move-object p1, v1

    :cond_7
    :goto_3
    if-eqz p1, :cond_8

    .line 2247
    iget-object p1, p1, Lcom/cred/pay/repository/models/checkout/InstrumentViewMapping;->onMessageChannelReady:Lcom/cred/pay/repository/models/checkout/InstrumentView;

    return-object p1

    :cond_8
    return-object v1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onMessageChannelReady:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->extraCallback:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/InstrumentAction;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onPostMessage:Lcom/cred/pay/repository/models/checkout/InstrumentData;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->ICustomTabsCallback$Stub:Ljava/util/Map;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CheckoutInstrument(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", paymentMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", paymentSubMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/InstrumentAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onPostMessage:Lcom/cred/pay/repository/models/checkout/InstrumentData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", views="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->ICustomTabsCallback$Stub:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->extraCallback:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/InstrumentAction;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onPostMessage:Lcom/cred/pay/repository/models/checkout/InstrumentData;

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object p2, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->ICustomTabsCallback$Stub:Ljava/util/Map;

    if-eqz p2, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cred/pay/repository/models/checkout/InstrumentViewMapping;

    invoke-interface {v0, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
