.class public final Lo/ensurePlayServicesAvailable;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final synthetic ICustomTabsCallback:[I

.field private static final enum onMessageChannelReady:I = 0x2

.field public static final enum onNavigationEvent:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    .line 4
    sput-object v0, Lo/ensurePlayServicesAvailable;->ICustomTabsCallback:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method
