.class final Lo/onLongClick;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final extraCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:Lo/fJ;

.field public final onPostMessage:Lo/fJ;


# direct methods
.method public constructor <init>(Lo/fJ;Ljava/lang/Object;Lo/fJ;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/fJ;",
            "TK;",
            "Lo/fJ;",
            "TV;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/onLongClick;->onPostMessage:Lo/fJ;

    .line 3
    iput-object p2, p0, Lo/onLongClick;->extraCallback:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lo/onLongClick;->onNavigationEvent:Lo/fJ;

    .line 5
    iput-object p4, p0, Lo/onLongClick;->ICustomTabsCallback:Ljava/lang/Object;

    return-void
.end method
