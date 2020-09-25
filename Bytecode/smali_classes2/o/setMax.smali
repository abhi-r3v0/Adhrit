.class final synthetic Lo/setMax;
.super Ljava/lang/Object;

# interfaces
.implements Lo/LockableBottomSheetBehavior;


# instance fields
.field private final onNavigationEvent:Lo/setOnSeekerChangeListener;

.field private final onPostMessage:Lo/setCircleProgressColorTwo;


# direct methods
.method constructor <init>(Lo/setOnSeekerChangeListener;Lo/setCircleProgressColorTwo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setMax;->onNavigationEvent:Lo/setOnSeekerChangeListener;

    iput-object p2, p0, Lo/setMax;->onPostMessage:Lo/setCircleProgressColorTwo;

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lo/setMax;->onNavigationEvent:Lo/setOnSeekerChangeListener;

    iget-object v1, p0, Lo/setMax;->onPostMessage:Lo/setCircleProgressColorTwo;

    invoke-virtual {v1}, Lo/setCircleProgressColorTwo;->onPostMessage()Ljava/util/Map;

    move-result-object v1

    iget-object v0, v0, Lo/setOnSeekerChangeListener;->onPostMessage:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
