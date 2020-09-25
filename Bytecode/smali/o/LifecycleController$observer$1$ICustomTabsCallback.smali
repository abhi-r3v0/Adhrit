.class public final Lo/LifecycleController$observer$1$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/LifecycleController$observer$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/LifecycleController$observer$1$ICustomTabsCallback$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\u0019\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u000fH\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCustomiseFragment$GreetingCustomiseExtra;",
        "Landroid/os/Parcelable;",
        "data",
        "Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingsCampaignData;",
        "creative",
        "Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;",
        "(Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingsCampaignData;Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;)V",
        "getCreative",
        "()Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;",
        "getData",
        "()Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingsCampaignData;",
        "component1",
        "component2",
        "copy",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "app_release"
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
.field final ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;

.field public final onMessageChannelReady:Lo/onActivityDestroyed;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/LifecycleController$observer$1$ICustomTabsCallback$extraCallback;

    invoke-direct {v0}, Lo/LifecycleController$observer$1$ICustomTabsCallback$extraCallback;-><init>()V

    sput-object v0, Lo/LifecycleController$observer$1$ICustomTabsCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lo/onActivityDestroyed;Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creative"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/LifecycleController$observer$1$ICustomTabsCallback;->onMessageChannelReady:Lo/onActivityDestroyed;

    iput-object p2, p0, Lo/LifecycleController$observer$1$ICustomTabsCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lo/LifecycleController$observer$1$ICustomTabsCallback;

    if-eqz v0, :cond_0

    check-cast p1, Lo/LifecycleController$observer$1$ICustomTabsCallback;

    iget-object v0, p0, Lo/LifecycleController$observer$1$ICustomTabsCallback;->onMessageChannelReady:Lo/onActivityDestroyed;

    iget-object v1, p1, Lo/LifecycleController$observer$1$ICustomTabsCallback;->onMessageChannelReady:Lo/onActivityDestroyed;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/LifecycleController$observer$1$ICustomTabsCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;

    iget-object p1, p1, Lo/LifecycleController$observer$1$ICustomTabsCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;

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

    iget-object v0, p0, Lo/LifecycleController$observer$1$ICustomTabsCallback;->onMessageChannelReady:Lo/onActivityDestroyed;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lo/LifecycleController$observer$1$ICustomTabsCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GreetingCustomiseExtra(data="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/LifecycleController$observer$1$ICustomTabsCallback;->onMessageChannelReady:Lo/onActivityDestroyed;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", creative="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/LifecycleController$observer$1$ICustomTabsCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lo/LifecycleController$observer$1$ICustomTabsCallback;->onMessageChannelReady:Lo/onActivityDestroyed;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lo/LifecycleController$observer$1$ICustomTabsCallback;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
