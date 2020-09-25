.class public final Lo/setPersistenceCacheSizeBytes;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ICustomTabsCallback:Lo/matches;

.field public static final ICustomTabsCallback$Stub:Lo/matches;

.field public static final asInterface:Lo/matches;

.field public static final extraCallback:Lo/matches;

.field public static final onMessageChannelReady:Lo/matches;

.field public static final onNavigationEvent:Lo/matches;

.field public static final onPostMessage:Lo/matches;


# instance fields
.field public final asBinder:Lo/matches;

.field public final onRelationshipValidationResult:Lo/matches;

.field final onTransact:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ":status"

    .line 8
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    sput-object v0, Lo/setPersistenceCacheSizeBytes;->onPostMessage:Lo/matches;

    const-string v0, ":method"

    .line 9
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    sput-object v0, Lo/setPersistenceCacheSizeBytes;->onMessageChannelReady:Lo/matches;

    const-string v0, ":path"

    .line 10
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    sput-object v0, Lo/setPersistenceCacheSizeBytes;->ICustomTabsCallback:Lo/matches;

    const-string v0, ":scheme"

    .line 11
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    sput-object v0, Lo/setPersistenceCacheSizeBytes;->onNavigationEvent:Lo/matches;

    const-string v0, ":authority"

    .line 12
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    sput-object v0, Lo/setPersistenceCacheSizeBytes;->extraCallback:Lo/matches;

    const-string v0, ":host"

    .line 13
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    sput-object v0, Lo/setPersistenceCacheSizeBytes;->asInterface:Lo/matches;

    const-string v0, ":version"

    .line 14
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    sput-object v0, Lo/setPersistenceCacheSizeBytes;->ICustomTabsCallback$Stub:Lo/matches;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-static {p1}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object p1

    invoke-static {p2}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lo/setPersistenceCacheSizeBytes;-><init>(Lo/matches;Lo/matches;)V

    return-void
.end method

.method public constructor <init>(Lo/matches;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-static {p2}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lo/setPersistenceCacheSizeBytes;-><init>(Lo/matches;Lo/matches;)V

    return-void
.end method

.method public constructor <init>(Lo/matches;Lo/matches;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lo/setPersistenceCacheSizeBytes;->asBinder:Lo/matches;

    .line 33
    iput-object p2, p0, Lo/setPersistenceCacheSizeBytes;->onRelationshipValidationResult:Lo/matches;

    .line 34
    invoke-virtual {p1}, Lo/matches;->onTransact()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Lo/matches;->onTransact()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lo/setPersistenceCacheSizeBytes;->onTransact:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 38
    instance-of v0, p1, Lo/setPersistenceCacheSizeBytes;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 39
    check-cast p1, Lo/setPersistenceCacheSizeBytes;

    .line 40
    iget-object v0, p0, Lo/setPersistenceCacheSizeBytes;->asBinder:Lo/matches;

    iget-object v2, p1, Lo/setPersistenceCacheSizeBytes;->asBinder:Lo/matches;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setPersistenceCacheSizeBytes;->onRelationshipValidationResult:Lo/matches;

    iget-object p1, p1, Lo/setPersistenceCacheSizeBytes;->onRelationshipValidationResult:Lo/matches;

    .line 41
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

    .line 48
    iget-object v0, p0, Lo/setPersistenceCacheSizeBytes;->asBinder:Lo/matches;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 49
    iget-object v1, p0, Lo/setPersistenceCacheSizeBytes;->onRelationshipValidationResult:Lo/matches;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 54
    iget-object v1, p0, Lo/setPersistenceCacheSizeBytes;->asBinder:Lo/matches;

    invoke-virtual {v1}, Lo/matches;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/setPersistenceCacheSizeBytes;->onRelationshipValidationResult:Lo/matches;

    invoke-virtual {v1}, Lo/matches;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
