.class public final Lo/Payload;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final onPostMessage:Lo/Payload;


# instance fields
.field public final extraCallback:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lo/Payload;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Payload;-><init>(I)V

    sput-object v0, Lo/Payload;->onPostMessage:Lo/Payload;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lo/Payload;->extraCallback:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 53
    :cond_1
    check-cast p1, Lo/Payload;

    .line 54
    iget v2, p0, Lo/Payload;->extraCallback:I

    iget p1, p1, Lo/Payload;->extraCallback:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 59
    iget v0, p0, Lo/Payload;->extraCallback:I

    return v0
.end method
