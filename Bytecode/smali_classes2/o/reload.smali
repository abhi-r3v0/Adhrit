.class public final Lo/reload;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/reload$onNavigationEvent;
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:I

.field final extraCallback:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(IZ)V
    .locals 0

    .line 6000
    invoke-direct {p0}, Lo/reload;-><init>()V

    iput p1, p0, Lo/reload;->ICustomTabsCallback:I

    iput-boolean p2, p0, Lo/reload;->extraCallback:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 2000
    :cond_0
    instance-of v1, p1, Lo/reload;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lo/reload;

    iget v1, p0, Lo/reload;->ICustomTabsCallback:I

    .line 3000
    iget v3, p1, Lo/reload;->ICustomTabsCallback:I

    if-ne v1, v3, :cond_1

    .line 2000
    iget-boolean v1, p0, Lo/reload;->extraCallback:Z

    .line 4000
    iget-boolean p1, p1, Lo/reload;->extraCallback:Z

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 5000
    iget v0, p0, Lo/reload;->ICustomTabsCallback:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget-boolean v1, p0, Lo/reload;->extraCallback:Z

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    const/16 v1, 0x4d5

    goto :goto_0

    :cond_0
    const/16 v1, 0x4cf

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1000
    iget v0, p0, Lo/reload;->ICustomTabsCallback:I

    iget-boolean v1, p0, Lo/reload;->extraCallback:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x49

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "AppUpdateOptions{appUpdateType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", allowAssetPackDeletion="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
