.class public final Lo/setForceIgnoreOutsideTouch$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isModal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setForceIgnoreOutsideTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/isModal<",
        "TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()Lo/setPromptPosition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setPromptPosition<",
            "TR;>;"
        }
    .end annotation

    .line 28
    sget-object v0, Lo/setForceIgnoreOutsideTouch;->onMessageChannelReady:Lo/setForceIgnoreOutsideTouch;

    return-object v0
.end method
