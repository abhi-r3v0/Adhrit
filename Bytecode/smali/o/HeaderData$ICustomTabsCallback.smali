.class final Lo/HeaderData$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/HeaderData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lo/p$a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/HeaderData$4;)V
    .locals 0

    .line 208
    invoke-direct {p0}, Lo/HeaderData$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 208
    check-cast p1, Lo/p$a;

    check-cast p2, Lo/p$a;

    invoke-virtual {p0, p1, p2}, Lo/HeaderData$ICustomTabsCallback;->onNavigationEvent(Lo/p$a;Lo/p$a;)I

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(Lo/p$a;Lo/p$a;)I
    .locals 0

    .line 212
    iget p2, p2, Lo/p$a;->extraCallback:I

    iget p1, p1, Lo/p$a;->extraCallback:I

    sub-int/2addr p2, p1

    return p2
.end method
