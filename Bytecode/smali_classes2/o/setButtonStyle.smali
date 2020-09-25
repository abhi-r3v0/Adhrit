.class public Lo/setButtonStyle;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lo/NativeBlurFilter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:Lo/nativeCreateFromNativeMemory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lo/nativeCreateFromNativeMemory;->onNavigationEvent()Lo/nativeCreateFromNativeMemory;

    move-result-object v0

    sput-object v0, Lo/setButtonStyle;->onMessageChannelReady:Lo/nativeCreateFromNativeMemory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
