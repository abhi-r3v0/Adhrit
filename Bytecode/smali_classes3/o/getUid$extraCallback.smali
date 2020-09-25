.class final Lo/getUid$extraCallback;
.super Lo/getUid$onRelationshipValidationResult;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getUid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/getUid;


# direct methods
.method constructor <init>(Lo/getUid;)V
    .locals 1

    .line 819
    iput-object p1, p0, Lo/getUid$extraCallback;->onNavigationEvent:Lo/getUid;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/getUid$onRelationshipValidationResult;-><init>(Lo/getUid;B)V

    return-void
.end method


# virtual methods
.method protected final extraCallback()F
    .locals 2

    .line 823
    iget-object v0, p0, Lo/getUid$extraCallback;->onNavigationEvent:Lo/getUid;

    iget v0, v0, Lo/getUid;->asBinder:F

    iget-object v1, p0, Lo/getUid$extraCallback;->onNavigationEvent:Lo/getUid;

    iget v1, v1, Lo/getUid;->asInterface:F

    add-float/2addr v0, v1

    return v0
.end method
