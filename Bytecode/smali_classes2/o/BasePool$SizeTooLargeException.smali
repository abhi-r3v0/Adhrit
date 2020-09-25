.class abstract Lo/BasePool$SizeTooLargeException;
.super Ljava/lang/Object;


# static fields
.field private static final onNavigationEvent:Lo/BasePool$SizeTooLargeException;

.field private static final onPostMessage:Lo/BasePool$SizeTooLargeException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/nativeAllocate;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/nativeAllocate;-><init>(Lo/BasePool$InvalidSizeException;)V

    sput-object v0, Lo/BasePool$SizeTooLargeException;->onNavigationEvent:Lo/BasePool$SizeTooLargeException;

    new-instance v0, Lo/BufferMemoryChunkPool;

    invoke-direct {v0, v1}, Lo/BufferMemoryChunkPool;-><init>(Lo/BasePool$InvalidSizeException;)V

    sput-object v0, Lo/BasePool$SizeTooLargeException;->onPostMessage:Lo/BasePool$SizeTooLargeException;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/BasePool$InvalidSizeException;)V
    .locals 0

    invoke-direct {p0}, Lo/BasePool$SizeTooLargeException;-><init>()V

    return-void
.end method

.method static ICustomTabsCallback()Lo/BasePool$SizeTooLargeException;
    .locals 1

    sget-object v0, Lo/BasePool$SizeTooLargeException;->onPostMessage:Lo/BasePool$SizeTooLargeException;

    return-object v0
.end method

.method static onMessageChannelReady()Lo/BasePool$SizeTooLargeException;
    .locals 1

    sget-object v0, Lo/BasePool$SizeTooLargeException;->onNavigationEvent:Lo/BasePool$SizeTooLargeException;

    return-object v0
.end method


# virtual methods
.method abstract extraCallback(Ljava/lang/Object;J)V
.end method

.method abstract onPostMessage(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method
