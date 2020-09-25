.class final Lo/getUid$ICustomTabsCallback$Stub;
.super Lo/getUid$onRelationshipValidationResult;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getUid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Stub"
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getUid;


# direct methods
.method constructor <init>(Lo/getUid;)V
    .locals 1

    .line 810
    iput-object p1, p0, Lo/getUid$ICustomTabsCallback$Stub;->extraCallback:Lo/getUid;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/getUid$onRelationshipValidationResult;-><init>(Lo/getUid;B)V

    return-void
.end method


# virtual methods
.method protected final extraCallback()F
    .locals 1

    .line 814
    iget-object v0, p0, Lo/getUid$ICustomTabsCallback$Stub;->extraCallback:Lo/getUid;

    iget v0, v0, Lo/getUid;->asBinder:F

    return v0
.end method
