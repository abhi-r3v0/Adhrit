.class final Lo/fx;
.super Lo/a$c$1;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lo/a$c$1<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final onMessageChannelReady:Lo/a$c$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/a$c$1<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient ICustomTabsCallback:I

.field private final transient extraCallback:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lo/fx;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lo/fx;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lo/fx;->onMessageChannelReady:Lo/a$c$1;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/a$c$1;-><init>()V

    .line 2
    iput-object p1, p0, Lo/fx;->extraCallback:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lo/fx;->ICustomTabsCallback:I

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback([Ljava/lang/Object;I)I
    .locals 3

    .line 10
    iget-object v0, p0, Lo/fx;->extraCallback:[Ljava/lang/Object;

    iget v1, p0, Lo/fx;->ICustomTabsCallback:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget p1, p0, Lo/fx;->ICustomTabsCallback:I

    add-int/2addr p2, p1

    return p2
.end method

.method final ICustomTabsCallback()[Ljava/lang/Object;
    .locals 1

    .line 7
    iget-object v0, p0, Lo/fx;->extraCallback:[Ljava/lang/Object;

    return-object v0
.end method

.method final ICustomTabsCallback$Stub()I
    .locals 1

    .line 9
    iget v0, p0, Lo/fx;->ICustomTabsCallback:I

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 12
    iget v0, p0, Lo/fx;->ICustomTabsCallback:I

    invoke-static {p1, v0}, Lo/dq;->onMessageChannelReady(II)I

    .line 13
    iget-object v0, p0, Lo/fx;->extraCallback:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method final onMessageChannelReady()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final onRelationshipValidationResult()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final size()I
    .locals 1

    .line 5
    iget v0, p0, Lo/fx;->ICustomTabsCallback:I

    return v0
.end method
