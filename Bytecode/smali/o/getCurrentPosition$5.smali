.class final Lo/getCurrentPosition$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCurrentPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[I>;"
    }
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/getCurrentPosition;


# direct methods
.method constructor <init>(Lo/getCurrentPosition;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lo/getCurrentPosition$5;->extraCallback:Lo/getCurrentPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 94
    check-cast p1, [I

    check-cast p2, [I

    const/4 v0, 0x0

    .line 1097
    aget p1, p1, v0

    aget p2, p2, v0

    sub-int/2addr p1, p2

    return p1
.end method
