.class final Lo/getHttpRequest;
.super Lo/BreadcrumbHandler;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lo/BreadcrumbHandler<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final onNavigationEvent:Lo/BreadcrumbHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/BreadcrumbHandler<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient extraCallback:[Ljava/lang/Object;

.field private final transient onMessageChannelReady:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Lo/getHttpRequest;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lo/getHttpRequest;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lo/getHttpRequest;->onNavigationEvent:Lo/BreadcrumbHandler;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lo/BreadcrumbHandler;-><init>()V

    .line 38
    iput-object p1, p0, Lo/getHttpRequest;->extraCallback:[Ljava/lang/Object;

    .line 39
    iput p2, p0, Lo/getHttpRequest;->onMessageChannelReady:I

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback()I
    .locals 1

    .line 64
    iget v0, p0, Lo/getHttpRequest;->onMessageChannelReady:I

    return v0
.end method

.method final extraCallback()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final extraCallback([Ljava/lang/Object;I)I
    .locals 2

    .line 69
    iget-object p2, p0, Lo/getHttpRequest;->extraCallback:[Ljava/lang/Object;

    iget v0, p0, Lo/getHttpRequest;->onMessageChannelReady:I

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    iget p1, p0, Lo/getHttpRequest;->onMessageChannelReady:I

    add-int/2addr p1, v1

    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 77
    iget v0, p0, Lo/getHttpRequest;->onMessageChannelReady:I

    invoke-static {p1, v0}, Lo/extraCallback$onMessageChannelReady;->extraCallback(II)I

    .line 78
    iget-object v0, p0, Lo/getHttpRequest;->extraCallback:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method final onNavigationEvent()[Ljava/lang/Object;
    .locals 1

    .line 54
    iget-object v0, p0, Lo/getHttpRequest;->extraCallback:[Ljava/lang/Object;

    return-object v0
.end method

.method final onRelationshipValidationResult()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final size()I
    .locals 1

    .line 44
    iget v0, p0, Lo/getHttpRequest;->onMessageChannelReady:I

    return v0
.end method
