.class public final Lo/RealtimeSinceBootClock$onPostMessage;
.super Lo/setButtonStyle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RealtimeSinceBootClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/RealtimeSinceBootClock<",
        "TT;*>;>",
        "Lo/setButtonStyle<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private onNavigationEvent:Lo/RealtimeSinceBootClock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/RealtimeSinceBootClock;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lo/setButtonStyle;-><init>()V

    iput-object p1, p0, Lo/RealtimeSinceBootClock$onPostMessage;->onNavigationEvent:Lo/RealtimeSinceBootClock;

    return-void
.end method
