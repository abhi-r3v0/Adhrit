.class public final Lo/setTitleOptional;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/initTitle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setTitleOptional$extraCallback;
    }
.end annotation


# instance fields
.field public final extraCallback:Lo/setTitleOptional$extraCallback;

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/setTitleOptional$extraCallback;Z)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lo/setTitleOptional;->onNavigationEvent:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lo/setTitleOptional;->extraCallback:Lo/setTitleOptional$extraCallback;

    .line 46
    iput-boolean p3, p0, Lo/setTitleOptional;->onPostMessage:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/createCheckedTextView;Lo/setOverlayMode;)Lo/setPadding;
    .locals 0

    .line 1146
    iget-boolean p1, p1, Lo/createCheckedTextView;->newSession:Z

    if-nez p1, :cond_0

    const-string p1, "Animation contains merge paths but they are disabled."

    .line 63
    invoke-static {p1}, Lo/onContentScrollStarted;->onNavigationEvent(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 66
    :cond_0
    new-instance p1, Lo/onHoverEvent;

    invoke-direct {p1, p0}, Lo/onHoverEvent;-><init>(Lo/setTitleOptional;)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MergePaths{mode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/setTitleOptional;->extraCallback:Lo/setTitleOptional$extraCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
