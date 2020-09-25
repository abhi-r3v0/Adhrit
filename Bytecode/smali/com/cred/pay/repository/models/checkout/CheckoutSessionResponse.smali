.class public final Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse$onNavigationEvent;
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
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B#\u0012\n\u0008\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0008\u0001\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0007J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0011\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u00c6\u0003J\'\u0010\u0015\u001a\u00020\u00002\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0003\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u00c6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u00d6\u0003J\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u001fJ\t\u0010 \u001a\u00020\u0017H\u00d6\u0001J\t\u0010!\u001a\u00020\u000cH\u00d6\u0001J\u0019\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0017H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR%\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u000b\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;",
        "Landroid/os/Parcelable;",
        "data",
        "Lcom/cred/pay/repository/models/checkout/SessionData;",
        "widgets",
        "",
        "Lcom/cred/pay/repository/models/checkout/Widget;",
        "(Lcom/cred/pay/repository/models/checkout/SessionData;Ljava/util/List;)V",
        "getData",
        "()Lcom/cred/pay/repository/models/checkout/SessionData;",
        "map",
        "",
        "",
        "map$annotations",
        "()V",
        "getMap",
        "()Ljava/util/Map;",
        "getWidgets",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "copy",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "getSuggestedInstrument",
        "Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;",
        "pi",
        "Lcom/cred/pay/repository/models/checkout/SuggestedPaymnetInstrument;",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
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
.field private final ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cred/pay/repository/models/checkout/Widget;",
            ">;"
        }
    .end annotation
.end field

.field public final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cred/pay/repository/models/checkout/Widget;",
            ">;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:Lcom/cred/pay/repository/models/checkout/SessionData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse$onNavigationEvent;

    invoke-direct {v0}, Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse$onNavigationEvent;-><init>()V

    sput-object v0, Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/cred/pay/repository/models/checkout/SessionData;Ljava/util/List;)V
    .locals 0
    .param p1    # Lcom/cred/pay/repository/models/checkout/SessionData;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "data"
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "payment_methods"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cred/pay/repository/models/checkout/SessionData;",
            "Ljava/util/List<",
            "Lcom/cred/pay/repository/models/checkout/Widget;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/SessionData;

    iput-object p2, p0, Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;->extraCallback:Ljava/util/List;

    .line 22
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;->ICustomTabsCallback:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final copy(Lcom/cred/pay/repository/models/checkout/SessionData;Ljava/util/List;)Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;
    .locals 1
    .param p1    # Lcom/cred/pay/repository/models/checkout/SessionData;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "data"
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Lo/NdkCrashFilesManager;
            onMessageChannelReady = "payment_methods"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cred/pay/repository/models/checkout/SessionData;",
            "Ljava/util/List<",
            "Lcom/cred/pay/repository/models/checkout/Widget;",
            ">;)",
            "Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;"
        }
    .end annotation

    new-instance v0, Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;

    invoke-direct {v0, p1, p2}, Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;-><init>(Lcom/cred/pay/repository/models/checkout/SessionData;Ljava/util/List;)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;

    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/SessionData;

    iget-object v1, p1, Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/SessionData;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;->extraCallback:Ljava/util/List;

    iget-object p1, p1, Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;->extraCallback:Ljava/util/List;

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

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/SessionData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;->extraCallback:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final onNavigationEvent(Lcom/cred/pay/repository/models/checkout/SuggestedPaymnetInstrument;)Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;
    .locals 5

    const-string v0, "pi"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;->ICustomTabsCallback:Ljava/util/Map;

    .line 1157
    iget-object v1, p1, Lcom/cred/pay/repository/models/checkout/SuggestedPaymnetInstrument;->extraCallback:Ljava/lang/String;

    .line 24
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cred/pay/repository/models/checkout/Widget;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 26
    iget-object v0, p0, Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;->extraCallback:Ljava/util/List;

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/cred/pay/repository/models/checkout/Widget;

    .line 2070
    iget-object v3, v3, Lcom/cred/pay/repository/models/checkout/Widget;->extraCallback:Ljava/lang/String;

    .line 2157
    iget-object v4, p1, Lcom/cred/pay/repository/models/checkout/SuggestedPaymnetInstrument;->extraCallback:Ljava/lang/String;

    .line 26
    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    check-cast v2, Lcom/cred/pay/repository/models/checkout/Widget;

    move-object v0, v2

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 27
    :goto_1
    iget-object v2, p0, Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;->ICustomTabsCallback:Ljava/util/Map;

    .line 3157
    iget-object v3, p1, Lcom/cred/pay/repository/models/checkout/SuggestedPaymnetInstrument;->extraCallback:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v3, ""

    .line 27
    :cond_3
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v0, :cond_7

    .line 4076
    iget-object v0, v0, Lcom/cred/pay/repository/models/checkout/Widget;->onPostMessage:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 29
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    .line 4164
    iget-object v3, v3, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;->onMessageChannelReady:Ljava/lang/String;

    .line 5155
    iget-object v4, p1, Lcom/cred/pay/repository/models/checkout/SuggestedPaymnetInstrument;->ICustomTabsCallback:Ljava/lang/String;

    .line 29
    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v1, v2

    :cond_6
    check-cast v1, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    :cond_7
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CheckoutSessionResponse(data="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/SessionData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", widgets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;->extraCallback:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;->onNavigationEvent:Lcom/cred/pay/repository/models/checkout/SessionData;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/cred/pay/repository/models/checkout/CheckoutSessionResponse;->extraCallback:Ljava/util/List;

    if-eqz p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cred/pay/repository/models/checkout/Widget;

    invoke-interface {v0, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
