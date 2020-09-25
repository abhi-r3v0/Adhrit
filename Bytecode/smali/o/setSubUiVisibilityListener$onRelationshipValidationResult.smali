.class public final Lo/setSubUiVisibilityListener$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setSubUiVisibilityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/setSubUiVisibilityListener;

.field private synthetic extraCallback:J

.field private synthetic onPostMessage:Lo/setNestedScrollingEnabled;


# direct methods
.method public constructor <init>(Lo/setSubUiVisibilityListener;Lo/setNestedScrollingEnabled;J)V
    .locals 0

    iput-object p1, p0, Lo/setSubUiVisibilityListener$onRelationshipValidationResult;->ICustomTabsCallback:Lo/setSubUiVisibilityListener;

    iput-object p2, p0, Lo/setSubUiVisibilityListener$onRelationshipValidationResult;->onPostMessage:Lo/setNestedScrollingEnabled;

    iput-wide p3, p0, Lo/setSubUiVisibilityListener$onRelationshipValidationResult;->extraCallback:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "contacts-sdk"

    const-string v1, "contact thumbnail requested"

    .line 58
    invoke-static {v0, v1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lo/setSubUiVisibilityListener$onRelationshipValidationResult;->ICustomTabsCallback:Lo/setSubUiVisibilityListener;

    invoke-static {v1}, Lo/setSubUiVisibilityListener;->onPostMessage(Lo/setSubUiVisibilityListener;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-static {v1, v2}, Lo/fromParcel;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "contact permission missing"

    .line 60
    invoke-static {v0, v1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lo/setSubUiVisibilityListener$onRelationshipValidationResult;->onPostMessage:Lo/setNestedScrollingEnabled;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lo/setNestedScrollingEnabled;->ICustomTabsCallback(Landroid/graphics/Bitmap;)V

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lo/setSubUiVisibilityListener$onRelationshipValidationResult;->ICustomTabsCallback:Lo/setSubUiVisibilityListener;

    invoke-static {v0}, Lo/setSubUiVisibilityListener;->ICustomTabsCallback(Lo/setSubUiVisibilityListener;)Lo/getTextOn;

    iget-object v0, p0, Lo/setSubUiVisibilityListener$onRelationshipValidationResult;->ICustomTabsCallback:Lo/setSubUiVisibilityListener;

    invoke-static {v0}, Lo/setSubUiVisibilityListener;->onPostMessage(Lo/setSubUiVisibilityListener;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lo/setSubUiVisibilityListener$onRelationshipValidationResult;->extraCallback:J

    invoke-static {v0, v1, v2}, Lo/getTextOn;->onPostMessage(Landroid/content/Context;J)Ljava/io/InputStream;

    move-result-object v0

    .line 66
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lo/setSubUiVisibilityListener$onRelationshipValidationResult;->onPostMessage:Lo/setNestedScrollingEnabled;

    invoke-interface {v1, v0}, Lo/setNestedScrollingEnabled;->ICustomTabsCallback(Landroid/graphics/Bitmap;)V

    return-void
.end method
