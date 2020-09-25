.class public final Lo/foreach;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/foreach$extraCallback;,
        Lo/foreach$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0087@\u0018\u0000 \u001f*\u0006\u0008\u0000\u0010\u0001 \u00012\u00020\u0002:\u0002\u001e\u001fB\u0016\u0008\u0000\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0013\u0010\u0016\u001a\u00020\r2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0002H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\u000f\u0010\u001a\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00078F\u00a2\u0006\u000c\u0012\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000c\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0010\u001a\u00028\u00008F\u00a2\u0006\u000c\u0012\u0004\u0008\u0011\u0010\t\u001a\u0004\u0008\u0012\u0010\u0005R\u0019\u0010\u0013\u001a\u0004\u0018\u00018\u00008F\u00a2\u0006\u000c\u0012\u0004\u0008\u0014\u0010\t\u001a\u0004\u0008\u0015\u0010\u0005\u00f8\u0001\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006 "
    }
    d2 = {
        "Lkotlinx/coroutines/channels/ValueOrClosed;",
        "T",
        "",
        "holder",
        "constructor-impl",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "closeCause",
        "",
        "closeCause$annotations",
        "()V",
        "getCloseCause-impl",
        "(Ljava/lang/Object;)Ljava/lang/Throwable;",
        "isClosed",
        "",
        "isClosed-impl",
        "(Ljava/lang/Object;)Z",
        "value",
        "value$annotations",
        "getValue-impl",
        "valueOrNull",
        "valueOrNull$annotations",
        "getValueOrNull-impl",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "toString-impl",
        "(Ljava/lang/Object;)Ljava/lang/String;",
        "Closed",
        "Companion",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final extraCallback:Lo/foreach$onPostMessage;


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/foreach$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/foreach$onPostMessage;-><init>(B)V

    sput-object v0, Lo/foreach;->extraCallback:Lo/foreach$onPostMessage;

    return-void
.end method

.method private synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/foreach;->ICustomTabsCallback:Ljava/lang/Object;

    return-void
.end method

.method public static onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static final synthetic onNavigationEvent(Ljava/lang/Object;)Lo/foreach;
    .locals 1

    new-instance v0, Lo/foreach;

    invoke-direct {v0, p0}, Lo/foreach;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lo/foreach;->ICustomTabsCallback:Ljava/lang/Object;

    .line 3000
    instance-of v1, p1, Lo/foreach;

    if-eqz v1, :cond_0

    check-cast p1, Lo/foreach;

    .line 4000
    iget-object p1, p1, Lo/foreach;->ICustomTabsCallback:Ljava/lang/Object;

    .line 3000
    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lo/foreach;->ICustomTabsCallback:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2000
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lo/foreach;->ICustomTabsCallback:Ljava/lang/Object;

    .line 1401
    instance-of v1, v0, Lo/foreach$extraCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1402
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Value("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
