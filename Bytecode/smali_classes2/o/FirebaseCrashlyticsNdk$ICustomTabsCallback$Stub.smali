.class public final Lo/FirebaseCrashlyticsNdk$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FirebaseCrashlyticsNdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stub"
.end annotation


# instance fields
.field public final ICustomTabsCallback:I

.field public final extraCallback:I

.field public final onPostMessage:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput p1, p0, Lo/FirebaseCrashlyticsNdk$ICustomTabsCallback$Stub;->onPostMessage:I

    .line 345
    iput p2, p0, Lo/FirebaseCrashlyticsNdk$ICustomTabsCallback$Stub;->ICustomTabsCallback:I

    .line 346
    iput p3, p0, Lo/FirebaseCrashlyticsNdk$ICustomTabsCallback$Stub;->extraCallback:I

    return-void
.end method
