.class Lcom/android/systemui/usb/UsbStorageActivity$2;
.super Landroid/os/storage/StorageEventListener;
.source "UsbStorageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/UsbStorageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/UsbStorageActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/UsbStorageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/systemui/usb/UsbStorageActivity$2;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    const/4 v5, 0x0

    const-string v6, "mounted"

    .line 110
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, InterStoragePath:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    const-string v3, "shared"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/android/systemui/usb/UsbStorageActivity$2;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    const/4 v4, 0x1

    #calls: Lcom/android/systemui/usb/UsbStorageActivity;->switchDisplay(Z)V
    invoke-static {v3, v4}, Lcom/android/systemui/usb/UsbStorageActivity;->access$200(Lcom/android/systemui/usb/UsbStorageActivity;Z)V

    .line 118
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, extExterStoragePath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageStateSd()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, extExterStorageState:Ljava/lang/String;
    const-string v3, "removed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    const-string v3, "mounted"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    iget-object v3, p0, Lcom/android/systemui/usb/UsbStorageActivity$2;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    #calls: Lcom/android/systemui/usb/UsbStorageActivity;->switchDisplay(Z)V
    invoke-static {v3, v5}, Lcom/android/systemui/usb/UsbStorageActivity;->access$200(Lcom/android/systemui/usb/UsbStorageActivity;Z)V

    .line 135
    :cond_1
    :goto_0
    return-void

    .line 130
    :cond_2
    const-string v3, "mounted"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    iget-object v3, p0, Lcom/android/systemui/usb/UsbStorageActivity$2;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    #calls: Lcom/android/systemui/usb/UsbStorageActivity;->switchDisplay(Z)V
    invoke-static {v3, v5}, Lcom/android/systemui/usb/UsbStorageActivity;->access$200(Lcom/android/systemui/usb/UsbStorageActivity;Z)V

    goto :goto_0
.end method
