import SwiftUI

struct ContentView: View {
    @State private var showLogin = false
    @State private var showHobbies = false

    var body: some View {
        if showHobbies {
            ShowHobbyList()
        } else if showLogin {
            LoginView(showHobbies: $showHobbies)
        } else {
            Onboarding(showLogin: $showLogin)
        }
    }
}

struct Onboarding: View {
    @Binding var showLogin: Bool

    var body: some View {
        TabView {
            ZStack {
                Image("CoffeeChat")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .opacity(0.3)

                VStack {
                    Text("Coffee Chat")
                        .font(.system(size: 50))
                        .italic()
                        .fontWeight(.bold)
                        .foregroundColor(Color.purple)
                        .padding()
                }
            }
            ZStack {
                Image("CoffeeOnTable")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .opacity(0.3)

                VStack {
                    Spacer()
                    Text("What is Coffee Chat?")
                        .font(.title)
                        .italic()
                        .fontWeight(.bold)
                        .foregroundColor(Color.purple)
                    Spacer()
                    Text("Swipe to learn more")
                        .fontWeight(.bold)
                        .foregroundColor(Color.purple)
                        .padding(.bottom)
                }
            }
            ZStack {
                Image("CoffeeOnTable")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .opacity(0.3)
                VStack {
                    Spacer()
                    Text("Coffee chat is a simple way to connect, share your hobbies, and learn from others.")
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .italic()
                        .fontWeight(.bold)
                        .foregroundColor(Color.purple)
                        .padding(.all, 30)
                    Spacer()
                    Text("Swipe to learn more")
                        .fontWeight(.bold)
                        .foregroundColor(Color.purple)
                        .padding(.bottom)
                }
            }
            ZStack {
                Image("CoffeeOnTable")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .opacity(0.3)
                VStack {
                    Text("Want to learn and share your knowledge with others?")
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .italic()
                        .fontWeight(.bold)
                        .foregroundColor(Color.purple)
                        .padding(.all, 30)
                    Button("Sign Up Now") {
                        showLogin = true
                    }
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                }
            }
        }
        .tabViewStyle(.page)
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .edgesIgnoringSafeArea(.all)
    }
}

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @Binding var showHobbies: Bool

    var body: some View {
        ZStack {
            Image("CoffeeOnTable")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.3)

            VStack {
                Text("Create Your Account!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()

                TextField("Enter your username", text: $username)
                    .padding(.all)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .frame(width: 350, height: 50)

                SecureField("Enter your password", text: $password)
                    .padding(.all)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .frame(width: 350, height: 50)

                Button(action: {
                    print("Logging in with \(username) / \(password)")
                    showHobbies = true
                }) {
                    Text("Login")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(Color.purple)
                        .cornerRadius(12)
                }
            }
        }
    }
}

struct ShowHobbyList: View {
    var body: some View {
        ZStack {
            Image("CoffeeChat")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.3)
            .ignoresSafeArea()

            VStack(spacing: 20) {
                Text("Choose the hobbies you like!")
                    .font(.system(size: 40))
                    .foregroundColor(.purple)
                    .italic()
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                HStack(spacing: 20) {
                    Button(action: {
                        print("Clicked on hiking")
                    }) {
                        Image("Hiking")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .clipped()
                            .cornerRadius(12)
                        
                    }

                    Button(action: {
                        print("Clicked on cycling")

                    }) {
                        Image("Cycling")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .clipped()
                            .cornerRadius(12)
                    }

                    Button(action: {
                        print("Clicked on surfing")

                    }) {
                        Image("Surfing")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .clipped()
                            .cornerRadius(12)
                    }
                }

                HStack(spacing: 20) {
                    Button(action: {
                        print("Clicked on running")

                    }) {
                        Image("Running")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .clipped()
                            .cornerRadius(12)
                    }

                    Button(action: {
                        print("Clicked on kayaking")

                    }) {
                        Image("Kayaking")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .clipped()
                            .cornerRadius(12)
                    }

                    Button(action: {
                        print("Clicked on kite surfing")

                    }) {
                        Image("KiteSurfing")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .clipped()
                            .cornerRadius(12)
                    }
                }

                HStack(spacing: 20) {
                    Button(action: {
                        print("Clicked on sailing")

                    }) {
                        Image("Sailing")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .clipped()
                            .cornerRadius(12)
                    }

                    Button(action: {
                        print("Clicked on backpacking")

                    }) {
                        Image("Backpacking")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .clipped()
                            .cornerRadius(12)
                    }

                    Button(action: {
                        print("Clicked on weightlifting")

                    }) {
                        Image("Weightlifting")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .clipped()
                            .cornerRadius(12)
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
