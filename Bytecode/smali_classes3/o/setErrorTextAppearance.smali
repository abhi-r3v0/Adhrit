.class final Lo/setErrorTextAppearance;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setFabCradleMargin;


# instance fields
.field private final synthetic extraCallback:Lo/setHint;

.field private final synthetic onNavigationEvent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/setHint;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setErrorTextAppearance;->extraCallback:Lo/setHint;

    iput-object p2, p0, Lo/setErrorTextAppearance;->onNavigationEvent:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lo/setErrorTextAppearance;->extraCallback:Lo/setHint;

    iget-object p5, p0, Lo/setErrorTextAppearance;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, p4, p5}, Lo/setHint;->onMessageChannelReady(ILjava/lang/Throwable;[BLjava/lang/String;)V

    return-void
.end method
