.class public Lo/valueOrNull;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/valueOrNull$ICustomTabsCallback;
    }
.end annotation


# static fields
.field public static final SERVER:Lo/valueOrNull;

.field public static final USER:Lo/valueOrNull;


# instance fields
.field private final queryParams:Lo/recursiveDelete;

.field private final source:Lo/valueOrNull$ICustomTabsCallback;

.field private final tagged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    new-instance v0, Lo/valueOrNull;

    sget-object v1, Lo/valueOrNull$ICustomTabsCallback;->User:Lo/valueOrNull$ICustomTabsCallback;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lo/valueOrNull;-><init>(Lo/valueOrNull$ICustomTabsCallback;Lo/recursiveDelete;Z)V

    sput-object v0, Lo/valueOrNull;->USER:Lo/valueOrNull;

    .line 29
    new-instance v0, Lo/valueOrNull;

    sget-object v1, Lo/valueOrNull$ICustomTabsCallback;->Server:Lo/valueOrNull$ICustomTabsCallback;

    invoke-direct {v0, v1, v3, v2}, Lo/valueOrNull;-><init>(Lo/valueOrNull$ICustomTabsCallback;Lo/recursiveDelete;Z)V

    sput-object v0, Lo/valueOrNull;->SERVER:Lo/valueOrNull;

    return-void
.end method

.method public constructor <init>(Lo/valueOrNull$ICustomTabsCallback;Lo/recursiveDelete;Z)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lo/valueOrNull;->source:Lo/valueOrNull$ICustomTabsCallback;

    .line 41
    iput-object p2, p0, Lo/valueOrNull;->queryParams:Lo/recursiveDelete;

    .line 42
    iput-boolean p3, p0, Lo/valueOrNull;->tagged:Z

    if-eqz p3, :cond_1

    .line 43
    invoke-virtual {p0}, Lo/valueOrNull;->isFromServer()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Lo/SessionReportingCoordinator$$Lambda$2;->hardAssert(Z)V

    return-void
.end method

.method public static forServerTaggedQuery(Lo/recursiveDelete;)Lo/valueOrNull;
    .locals 3

    .line 32
    new-instance v0, Lo/valueOrNull;

    sget-object v1, Lo/valueOrNull$ICustomTabsCallback;->Server:Lo/valueOrNull$ICustomTabsCallback;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lo/valueOrNull;-><init>(Lo/valueOrNull$ICustomTabsCallback;Lo/recursiveDelete;Z)V

    return-object v0
.end method


# virtual methods
.method public getQueryParams()Lo/recursiveDelete;
    .locals 1

    .line 71
    iget-object v0, p0, Lo/valueOrNull;->queryParams:Lo/recursiveDelete;

    return-object v0
.end method

.method public isFromServer()Z
    .locals 2

    .line 51
    iget-object v0, p0, Lo/valueOrNull;->source:Lo/valueOrNull$ICustomTabsCallback;

    sget-object v1, Lo/valueOrNull$ICustomTabsCallback;->Server:Lo/valueOrNull$ICustomTabsCallback;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFromUser()Z
    .locals 2

    .line 47
    iget-object v0, p0, Lo/valueOrNull;->source:Lo/valueOrNull$ICustomTabsCallback;

    sget-object v1, Lo/valueOrNull$ICustomTabsCallback;->User:Lo/valueOrNull$ICustomTabsCallback;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTagged()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lo/valueOrNull;->tagged:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OperationSource{source="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/valueOrNull;->source:Lo/valueOrNull$ICustomTabsCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", queryParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/valueOrNull;->queryParams:Lo/recursiveDelete;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tagged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/valueOrNull;->tagged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
