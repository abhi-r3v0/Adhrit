.class final Lo/setDefaultHintTextColor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setFabCradleMargin;


# instance fields
.field private final synthetic onNavigationEvent:Lo/setHint;


# direct methods
.method constructor <init>(Lo/setHint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setDefaultHintTextColor;->onNavigationEvent:Lo/setHint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6
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
    iget-object v0, p0, Lo/setDefaultHintTextColor;->onNavigationEvent:Lo/setHint;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lo/setHint;->onNavigationEvent(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method
