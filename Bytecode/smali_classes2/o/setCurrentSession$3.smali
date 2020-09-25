.class final Lo/setCurrentSession$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setCurrentSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lo/LogFileManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 34
    check-cast p1, Lo/LogFileManager;

    check-cast p2, Lo/LogFileManager;

    invoke-virtual {p0, p1, p2}, Lo/setCurrentSession$3;->compare(Lo/LogFileManager;Lo/LogFileManager;)I

    move-result p1

    return p1
.end method

.method public final compare(Lo/LogFileManager;Lo/LogFileManager;)I
    .locals 0

    .line 37
    invoke-virtual {p1, p2}, Lo/LogFileManager;->compareTo(Lo/LogFileManager;)I

    move-result p1

    return p1
.end method
