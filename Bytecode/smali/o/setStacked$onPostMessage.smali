.class final Lo/setStacked$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setStacked;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation

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
.field ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation
.end field

.field extraCallback:Lo/setStacked$onPostMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setStacked$onPostMessage<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field onPostMessage:Lo/setStacked$onPostMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setStacked$onPostMessage<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, v0}, Lo/setStacked$onPostMessage;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p0, p0, Lo/setStacked$onPostMessage;->extraCallback:Lo/setStacked$onPostMessage;

    iput-object p0, p0, Lo/setStacked$onPostMessage;->onPostMessage:Lo/setStacked$onPostMessage;

    .line 136
    iput-object p1, p0, Lo/setStacked$onPostMessage;->onNavigationEvent:Ljava/lang/Object;

    return-void
.end method
