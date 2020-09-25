.class public Lo/getAttributeInt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/en;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lo/ek;",
        ">",
        "Ljava/lang/Object;",
        "Lo/en<",
        "TMessageType;>;"
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/getMaxSize;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2
    invoke-static {}, Lo/getMaxSize;->extraCallback()Lo/getMaxSize;

    move-result-object v0

    sput-object v0, Lo/getAttributeInt;->ICustomTabsCallback:Lo/getMaxSize;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
