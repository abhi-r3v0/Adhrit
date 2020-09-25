.class public final Lo/RealtimeSinceBootClock$asInterface;
.super Lo/nativeGetFrameCount;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RealtimeSinceBootClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "asInterface"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lo/NativeBlurFilter;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Lo/nativeGetFrameCount<",
        "TContainingType;TType;>;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TType;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/NativeBlurFilter;

.field private final onMessageChannelReady:Lo/RealtimeSinceBootClock$extraCallback;

.field private final onNavigationEvent:Lo/NativeBlurFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TContainingType;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/NativeBlurFilter;Ljava/lang/Object;Lo/NativeBlurFilter;Lo/RealtimeSinceBootClock$extraCallback;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContainingType;TType;",
            "Lo/NativeBlurFilter;",
            "Lo/RealtimeSinceBootClock$extraCallback;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lo/nativeGetFrameCount;-><init>()V

    if-eqz p1, :cond_2

    iget-object p5, p4, Lo/RealtimeSinceBootClock$extraCallback;->ICustomTabsCallback:Lo/getSDKVersionCode;

    sget-object v0, Lo/getSDKVersionCode;->ICustomTabsService:Lo/getSDKVersionCode;

    if-ne p5, v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null messageDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lo/RealtimeSinceBootClock$asInterface;->onNavigationEvent:Lo/NativeBlurFilter;

    iput-object p2, p0, Lo/RealtimeSinceBootClock$asInterface;->ICustomTabsCallback:Ljava/lang/Object;

    iput-object p3, p0, Lo/RealtimeSinceBootClock$asInterface;->extraCallback:Lo/NativeBlurFilter;

    iput-object p4, p0, Lo/RealtimeSinceBootClock$asInterface;->onMessageChannelReady:Lo/RealtimeSinceBootClock$extraCallback;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null containingTypeDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
