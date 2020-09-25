.class public final Lo/fa$ICustomTabsCallback;
.super Lo/getAttributeInt;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/fa<",
        "TT;*>;>",
        "Lo/getAttributeInt<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final onPostMessage:Lo/fa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/fa;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lo/getAttributeInt;-><init>()V

    .line 2
    iput-object p1, p0, Lo/fa$ICustomTabsCallback;->onPostMessage:Lo/fa;

    return-void
.end method
