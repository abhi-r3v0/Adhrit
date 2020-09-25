.class final Lo/getComparator$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/translate$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/translate$extraCallback<",
        "Lo/getSuccessorKey;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 172
    invoke-direct {p0}, Lo/getComparator$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onNavigationEvent(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x5

    return p1
.end method
