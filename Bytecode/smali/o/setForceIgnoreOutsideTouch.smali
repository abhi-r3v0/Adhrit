.class public final Lo/setForceIgnoreOutsideTouch;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPromptPosition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setForceIgnoreOutsideTouch$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPromptPosition<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/isModal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isModal<",
            "*>;"
        }
    .end annotation
.end field

.field static final onMessageChannelReady:Lo/setForceIgnoreOutsideTouch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setForceIgnoreOutsideTouch<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lo/setForceIgnoreOutsideTouch;

    invoke-direct {v0}, Lo/setForceIgnoreOutsideTouch;-><init>()V

    sput-object v0, Lo/setForceIgnoreOutsideTouch;->onMessageChannelReady:Lo/setForceIgnoreOutsideTouch;

    .line 16
    new-instance v0, Lo/setForceIgnoreOutsideTouch$extraCallback;

    invoke-direct {v0}, Lo/setForceIgnoreOutsideTouch$extraCallback;-><init>()V

    sput-object v0, Lo/setForceIgnoreOutsideTouch;->ICustomTabsCallback:Lo/isModal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onMessageChannelReady()Lo/isModal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/isModal<",
            "TR;>;"
        }
    .end annotation

    .line 35
    sget-object v0, Lo/setForceIgnoreOutsideTouch;->ICustomTabsCallback:Lo/isModal;

    return-object v0
.end method
