.class final Lo/getPrompt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ContentFrameLayout$OnAttachListener$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/ContentFrameLayout$OnAttachListener$onPostMessage;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/getSupportImageTintList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getSupportImageTintList<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field private final extraCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/applyFrameworkTintUsingColorFilter;


# direct methods
.method constructor <init>(Lo/getSupportImageTintList;Ljava/lang/Object;Lo/applyFrameworkTintUsingColorFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getSupportImageTintList<",
            "TDataType;>;TDataType;",
            "Lo/applyFrameworkTintUsingColorFilter;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lo/getPrompt;->ICustomTabsCallback:Lo/getSupportImageTintList;

    .line 24
    iput-object p2, p0, Lo/getPrompt;->extraCallback:Ljava/lang/Object;

    .line 25
    iput-object p3, p0, Lo/getPrompt;->onNavigationEvent:Lo/applyFrameworkTintUsingColorFilter;

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/io/File;)Z
    .locals 3

    .line 30
    iget-object v0, p0, Lo/getPrompt;->ICustomTabsCallback:Lo/getSupportImageTintList;

    iget-object v1, p0, Lo/getPrompt;->extraCallback:Ljava/lang/Object;

    iget-object v2, p0, Lo/getPrompt;->onNavigationEvent:Lo/applyFrameworkTintUsingColorFilter;

    invoke-interface {v0, v1, p1, v2}, Lo/getSupportImageTintList;->onMessageChannelReady(Ljava/lang/Object;Ljava/io/File;Lo/applyFrameworkTintUsingColorFilter;)Z

    move-result p1

    return p1
.end method
