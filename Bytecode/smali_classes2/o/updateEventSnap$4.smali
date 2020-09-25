.class final Lo/updateEventSnap$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/updateEventSnap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/updateEventSnap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/fullLimitUpdateChild;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p2

    .line 88
    invoke-interface {p1, v0, v1}, Lo/fullLimitUpdateChild;->asInterface(J)V

    const/4 p1, 0x1

    return p1
.end method
