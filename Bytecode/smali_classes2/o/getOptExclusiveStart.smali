.class public final Lo/getOptExclusiveStart;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ICustomTabsCallback:Lo/matches;

.field public static final extraCallback:Lo/matches;

.field public static final onMessageChannelReady:Lo/matches;

.field public static final onNavigationEvent:Lo/matches;

.field public static final onPostMessage:Lo/matches;


# instance fields
.field final ICustomTabsCallback$Stub:I

.field public final asBinder:Lo/matches;

.field public final asInterface:Lo/matches;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ":status"

    .line 12
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    sput-object v0, Lo/getOptExclusiveStart;->onNavigationEvent:Lo/matches;

    const-string v0, ":method"

    .line 13
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    sput-object v0, Lo/getOptExclusiveStart;->onPostMessage:Lo/matches;

    const-string v0, ":path"

    .line 14
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    sput-object v0, Lo/getOptExclusiveStart;->ICustomTabsCallback:Lo/matches;

    const-string v0, ":scheme"

    .line 15
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    sput-object v0, Lo/getOptExclusiveStart;->onMessageChannelReady:Lo/matches;

    const-string v0, ":authority"

    .line 16
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    sput-object v0, Lo/getOptExclusiveStart;->extraCallback:Lo/matches;

    const-string v0, ":host"

    .line 17
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    const-string v0, ":version"

    .line 18
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-static {p1}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object p1

    invoke-static {p2}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lo/getOptExclusiveStart;-><init>(Lo/matches;Lo/matches;)V

    return-void
.end method

.method public constructor <init>(Lo/matches;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-static {p2}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lo/getOptExclusiveStart;-><init>(Lo/matches;Lo/matches;)V

    return-void
.end method

.method public constructor <init>(Lo/matches;Lo/matches;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lo/getOptExclusiveStart;->asInterface:Lo/matches;

    .line 37
    iput-object p2, p0, Lo/getOptExclusiveStart;->asBinder:Lo/matches;

    .line 38
    invoke-virtual {p1}, Lo/matches;->onTransact()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Lo/matches;->onTransact()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lo/getOptExclusiveStart;->ICustomTabsCallback$Stub:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 42
    instance-of v0, p1, Lo/getOptExclusiveStart;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 43
    check-cast p1, Lo/getOptExclusiveStart;

    .line 44
    iget-object v0, p0, Lo/getOptExclusiveStart;->asInterface:Lo/matches;

    iget-object v2, p1, Lo/getOptExclusiveStart;->asInterface:Lo/matches;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/getOptExclusiveStart;->asBinder:Lo/matches;

    iget-object p1, p1, Lo/getOptExclusiveStart;->asBinder:Lo/matches;

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 52
    iget-object v0, p0, Lo/getOptExclusiveStart;->asInterface:Lo/matches;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 53
    iget-object v1, p0, Lo/getOptExclusiveStart;->asBinder:Lo/matches;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    iget-object v1, p0, Lo/getOptExclusiveStart;->asInterface:Lo/matches;

    invoke-virtual {v1}, Lo/matches;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/getOptExclusiveStart;->asBinder:Lo/matches;

    invoke-virtual {v1}, Lo/matches;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
