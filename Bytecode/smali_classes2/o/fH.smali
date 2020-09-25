.class public final Lo/fH;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile onNavigationEvent:Lo/gy;

.field private static final onPostMessage:Lo/gy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2
    new-instance v0, Lo/go;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/go;-><init>(Lo/dx;)V

    .line 3
    sput-object v0, Lo/fH;->onPostMessage:Lo/gy;

    sput-object v0, Lo/fH;->onNavigationEvent:Lo/gy;

    return-void
.end method

.method public static onNavigationEvent()Lo/gy;
    .locals 1

    .line 1
    sget-object v0, Lo/fH;->onNavigationEvent:Lo/gy;

    return-object v0
.end method
