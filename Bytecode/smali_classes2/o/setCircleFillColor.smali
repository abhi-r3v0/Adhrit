.class final synthetic Lo/setCircleFillColor;
.super Ljava/lang/Object;

# interfaces
.implements Lo/LockableBottomSheetBehavior;


# instance fields
.field private final extraCallback:Lo/setOnSeekerChangeListener;


# direct methods
.method constructor <init>(Lo/setOnSeekerChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setCircleFillColor;->extraCallback:Lo/setOnSeekerChangeListener;

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo/setCircleFillColor;->extraCallback:Lo/setOnSeekerChangeListener;

    invoke-virtual {v0}, Lo/setOnSeekerChangeListener;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
