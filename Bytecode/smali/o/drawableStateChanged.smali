.class public final Lo/drawableStateChanged;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onMessageChannelReady:Lo/drawableStateChanged;


# instance fields
.field public final onNavigationEvent:Lo/fromMediaItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fromMediaItem<",
            "Ljava/lang/String;",
            "Lo/createCheckBox;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lo/drawableStateChanged;

    invoke-direct {v0}, Lo/drawableStateChanged;-><init>()V

    sput-object v0, Lo/drawableStateChanged;->onMessageChannelReady:Lo/drawableStateChanged;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lo/fromMediaItem;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lo/fromMediaItem;-><init>(I)V

    iput-object v0, p0, Lo/drawableStateChanged;->onNavigationEvent:Lo/fromMediaItem;

    return-void
.end method

.method public static onNavigationEvent()Lo/drawableStateChanged;
    .locals 1

    .line 16
    sget-object v0, Lo/drawableStateChanged;->onMessageChannelReady:Lo/drawableStateChanged;

    return-object v0
.end method
