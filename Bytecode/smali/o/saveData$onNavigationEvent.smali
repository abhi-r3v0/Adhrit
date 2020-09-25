.class final Lo/saveData$onNavigationEvent;
.super Lo/saveData;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/saveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation


# instance fields
.field public final toString:Lo/DreamAppGlideModule;


# direct methods
.method public constructor <init>(ILo/DreamAppGlideModule;)V
    .locals 0

    .line 409
    invoke-direct {p0, p1}, Lo/saveData;-><init>(I)V

    .line 410
    iput-object p2, p0, Lo/saveData$onNavigationEvent;->toString:Lo/DreamAppGlideModule;

    return-void
.end method
