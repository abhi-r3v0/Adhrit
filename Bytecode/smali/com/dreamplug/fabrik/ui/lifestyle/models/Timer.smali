.class public final Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer$onMessageChannelReady;
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
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B#\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000cJ\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J2\u0010\u0017\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0018J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u00d6\u0003J\t\u0010\u001f\u001a\u00020\u001aH\u00d6\u0001J\t\u0010 \u001a\u00020\u000fH\u00d6\u0001J\u0019\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u001aH\u00d6\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u000b\u0010\u000cR\u001d\u0010\u000e\u001a\u0004\u0018\u00010\u000f8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006&"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;",
        "Landroid/os/Parcelable;",
        "time",
        "",
        "before",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;",
        "after",
        "(Ljava/lang/Long;Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;)V",
        "getAfter",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;",
        "getBefore",
        "getTime",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "timerText",
        "",
        "getTimerText",
        "()Ljava/lang/String;",
        "timerText$delegate",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerDelegate;",
        "component1",
        "component2",
        "component3",
        "copy",
        "(Ljava/lang/Long;Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;)Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
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

.field public static final synthetic ICustomTabsCallback:[Lo/applyUserOverwrite;


# instance fields
.field public final extraCallback:Ljava/lang/Long;

.field public final onMessageChannelReady:Lo/setChildDrawingOrderCallback;

.field final onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;

.field final onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lo/applyUserOverwrite;

    new-instance v1, Lo/access$2900;

    const-class v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;

    invoke-static {v2}, Lo/applyEmulatorSettings;->ICustomTabsCallback(Ljava/lang/Class;)Lo/viewExistsForQuery;

    move-result-object v2

    const-string/jumbo v3, "timerText"

    const-string v4, "getTimerText()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lo/access$2900;-><init>(Lo/getQueryViews;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lo/applyEmulatorSettings;->onMessageChannelReady(Lo/getConnectionURL;)Lo/applyServerOverwrite;

    move-result-object v1

    check-cast v1, Lo/applyUserOverwrite;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;->ICustomTabsCallback:[Lo/applyUserOverwrite;

    new-instance v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer$onMessageChannelReady;

    invoke-direct {v0}, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer$onMessageChannelReady;-><init>()V

    sput-object v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;)V
    .locals 1

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;->extraCallback:Ljava/lang/Long;

    iput-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;

    iput-object p3, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;

    .line 283
    new-instance p1, Lo/setChildDrawingOrderCallback;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 1290
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, p3

    .line 283
    :goto_0
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;

    if-eqz v0, :cond_1

    .line 2290
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v0, p3

    .line 283
    :goto_1
    invoke-direct {p1, p3, p2, v0}, Lo/setChildDrawingOrderCallback;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;->onMessageChannelReady:Lo/setChildDrawingOrderCallback;

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

    instance-of v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;->extraCallback:Ljava/lang/Long;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;->extraCallback:Ljava/lang/Long;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;

    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;

    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;

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

    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;->extraCallback:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Timer(time="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;->extraCallback:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", before="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", after="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;->extraCallback:Ljava/lang/Long;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object p2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Timer;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/models/TimerData;

    if-eqz p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
